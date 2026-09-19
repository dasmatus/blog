import { $, spawn } from "bun";
import { join } from "path";

const PANDOC_VERSION = "3.2.1";
const JUST_VERSION = "1.36.0";
const HOME = process.env.HOME ?? "/root";
const BIN_DIR = join(HOME, ".local", "bin");

$.env({ ...process.env, PATH: `${BIN_DIR}:${process.env.PATH}` });

async function download(url: string, dest: string): Promise<void> {
  console.log(`  Downloading ${url}`);
  const res = await fetch(url, { redirect: "follow" });
  if (!res.ok) throw new Error(`HTTP ${res.status} downloading ${url}`);
  await Bun.write(dest, res);
}

await $`mkdir -p ${BIN_DIR}`;

if ((await $`which pandoc`.nothrow().quiet()).exitCode !== 0) {
  console.log(`Installing pandoc ${PANDOC_VERSION}...`);
  const archive = `/tmp/pandoc-${PANDOC_VERSION}.tar.gz`;
  await download(
    `https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz`,
    archive,
  );
  await $`tar xzf ${archive} --strip-components=2 -C ${BIN_DIR} pandoc-${PANDOC_VERSION}/bin/pandoc`;
  await $`rm ${archive}`;
}

if ((await $`which just`.nothrow().quiet()).exitCode !== 0) {
  console.log(`Installing just ${JUST_VERSION}...`);
  const archive = `/tmp/just-${JUST_VERSION}.tar.gz`;
  await download(
    `https://github.com/casey/just/releases/download/${JUST_VERSION}/just-${JUST_VERSION}-x86_64-unknown-linux-musl.tar.gz`,
    archive,
  );
  await $`tar xzf ${archive} -C ${BIN_DIR} just`;
  await $`rm ${archive}`;
}

const pandocVer = (await $`pandoc --version`.text()).split("\n")[0];
const justVer = (await $`just --version`.text()).trim();
console.log(`pandoc ${pandocVer}`);
console.log(`just   ${justVer}`);

await $`just build`;
