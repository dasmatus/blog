# ── site metadata ────────────────────────────────────────────────
sitename := "Matt's blog"
author   := "Matt"
lang     := "sk"
base-url := "https://example.com"
# ─────────────────────────────────────────────────────────────────

out    := "output"
pandoc := "pandoc"
meta   := ".metadata.yaml"   # generated — do not edit by hand

# Write metadata vars to a YAML file so pandoc receives them cleanly
# (avoids shell word-splitting issues with values that contain spaces)
_meta:
    #!/usr/bin/env bash
    {
        echo "sitename: \"{{sitename}}\""
        echo "author: \"{{author}}\""
        echo "lang: \"{{lang}}\""
        echo "base-url: \"{{base-url}}\""
    } > {{meta}}

# Build everything
build: _meta build-posts build-pages build-home copy-static

# Build all posts from posts/*.md
build-posts: _meta
    #!/usr/bin/env bash
    mkdir -p {{out}}/posts
    for f in posts/*.md; do
        [ -f "$f" ] || continue
        name=$(basename "$f" .md)
        echo "  post: $name"
        {{pandoc}} "$f" \
            --template=templates/article.html \
            --toc --toc-depth=3 \
            --metadata-file {{meta}} \
            -o "{{out}}/posts/$name.html"
    done

# Build special pages from pages/*.md
build-pages: _meta
    #!/usr/bin/env bash
    mkdir -p {{out}}
    for f in pages/*.md; do
        [ -f "$f" ] || continue
        name=$(basename "$f" .md)
        echo "  page: $name"
        {{pandoc}} "$f" \
            --template=templates/page.html \
            --metadata-file {{meta}} \
            -o "{{out}}/$name.html"
    done

# Build home page — generates post list then renders index.md
build-home: _meta
    #!/usr/bin/env bash
    mkdir -p {{out}}

    list_file=$(mktemp /tmp/postlist.XXXXXX.md)
    echo "## Posts" > "$list_file"
    echo "" >> "$list_file"

    declare -A posts
    for f in posts/*.md; do
        [ -f "$f" ] || continue
        title=$({{pandoc}} --template=<(echo '$title$') "$f" 2>/dev/null | tr -d '\n')
        date=$({{pandoc}} --template=<(echo '$date$') "$f" 2>/dev/null | tr -d '\n')
        desc=$({{pandoc}} --template=<(echo '$if(description-meta)$$description-meta$$endif$') "$f" 2>/dev/null | tr -d '\n')
        name=$(basename "$f" .md)
        key="${date}_${name}"
        posts["$key"]="$title|$date|$desc|$name"
    done

    for key in $(echo "${!posts[@]}" | tr ' ' '\n' | sort -r); do
        IFS='|' read -r title date desc name <<< "${posts[$key]}"
        echo "- [$title](posts/$name.html) *$date*" >> "$list_file"
        [ -n "$desc" ] && echo "  $desc" >> "$list_file"
        echo "" >> "$list_file"
    done

    if [ -f index.md ]; then
        cat_file=$(mktemp /tmp/index.XXXXXX.md)
        cat index.md "$list_file" > "$cat_file"
        {{pandoc}} "$cat_file" \
            --template=templates/home.html \
            --metadata-file {{meta}} \
            -o "{{out}}/index.html"
        rm "$cat_file"
    else
        {{pandoc}} "$list_file" \
            --template=templates/home.html \
            --metadata-file {{meta}} \
            -o "{{out}}/index.html"
    fi

    rm "$list_file"
    echo "  home: index.html"

# Copy static assets (images, etc.) to output
copy-static:
    #!/usr/bin/env bash
    if [ -d static ]; then
        cp -r static {{out}}/
        echo "  static: copied"
    fi

# Serve the output directory on localhost:8000
serve:
    python3 -m http.server 8000 -d {{out}}

# Watch and rebuild on changes (requires entr)
watch:
    find posts pages templates index.md -name '*.md' -o -name '*.html' 2>/dev/null \
        | entr -s 'just build'

# Remove build output
clean:
    rm -rf {{out}}
