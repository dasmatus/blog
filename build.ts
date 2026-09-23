import { $ } from "bun";
import { existsSync } from "fs";
import { join } from "path";

// pandoc and just are installed from the npm registry (see package.json), so the
// build never downloads release archives from github.com at build time.
const BIN_DIR = join(import.meta.dir, "node_modules", ".bin");

if (!existsSync(join(BIN_DIR, "pandoc")) || !existsSync(join(BIN_DIR, "just"))) {
  throw new Error(
    `pandoc/just not found in ${BIN_DIR}. Run \`bun install\` before building.`,
  );
}

$.env({ ...process.env, PATH: `${BIN_DIR}:${process.env.PATH}` });

console.log(`pandoc ${(await $`pandoc --version`.text()).split("\n")[0]}`);
console.log(`just   ${(await $`just --version`.text()).trim()}`);

await $`just build`;
