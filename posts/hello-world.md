---
title: "Hello World"
date: "2026-06-04"
author: "Your Name"
description-meta: "The first post on this blog — why I built it and what to expect."
keywords:
  - meta
  - writing
---

This is the first post. It exists to prove the blog works.

## Why Pandoc

Pandoc converts Markdown to clean HTML. No framework, no build pipeline, no
JavaScript dependencies. A Justfile and a few templates are enough.

```bash
pandoc post.md --template=templates/article.html -o output/posts/post.html
```

## What's next

More posts.
