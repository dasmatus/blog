---
title: "LD_PRELOAD: čo to je a ako to využiť"
date: "2025-10-26"
author: "Matt"
keywords:
  - advanced
  - initramfs
  - ld preload
  - linux
---

Podľa mojich štatistík drtivá väčšina mojich návštevnikov používa Unixu podobný alebo Unixový operačný systém. Čo majú tieto OS spoločné? Všetky majú svoj preloader, ktorý sa využíva na načítanie zdieľaných knižníc.

## Čo to je?

> ::: {}
> V tomto článku sa budem primárne venovať Linuxu, ale to isté sa dá aj na iných unixových systémoch, len s inými premennými pred cestou ku programu.
> :::

>  Poznámka autora: Funkcie a príkazy sa pravidelne zamiešavajú v tomto článku, ale obidve znamenajú to isté.

Keď zapnete napríklad Counter-Strike cez Steam, tak sa toho na pozadí deje veľmi veľa. Schválne si skúste otvoriť terminál a spustiť [strace](https://www.man7.org/linux/man-pages/man1/strace.1.html), pričom za ten príkaz dáte cestu k súboru CSka. Uvidíte veľmi veľa systémových volaní, ktoré možu byť napríklad execve, send, recv, atď.. Implementácie týchto príkazov sa skrývajú v zdieľaných knižniciach, ako je napríklad libc.so, kde prípona .so je skratka pre Shared Object, čo je obdoba DLL z Windowsu, ale na Linuxe.

Ale čo ak si prednačítame cez premennú LD_PRELOAD, ktorú dáme spolu s jej hodnotou pred cestu k binárnemu súboru, cestu ku našej zdieľanej knižnici s rovnakými definíciami funkcií, ktoré ten daný program volá, ale s inou implementáciou, napríklad s funkciou getline(), ktorá slúži na zaznámenavanie vstupu z klávesnice, pričom to potom odosiela cez curl na server niekde do Ruska to, čo ste tam zadali.

## Úúúúú, to vyzerá zaujímavo, ako si urobím vlastnú prednačítanú knižnicu?

> ::: {}
> Poznámka autora: Celý projekt nájdete na [mojom GitLabe](https://gitlab.com/TenTypekMatus/ld_preload).
> :::

V prvom rade musíte vedieť programovať v asembleri/céčku/C++/jazyku, ktorý vám nebráni ,,robiť sprostosti˝. Ja, keď som si toto skúšal, tak som najskôr robil definície tých funkcií, ktoré som chcel ,,uniesť˝, v Ruste. Veľmi skoro som zistil, že Rust kvôli jeho prísnosti nie je dobrý na tento projekt. Tak som sa prehovoril, že to budem robiť v C++ hlavne kvôli tomu, že [moderné verzie tohto jazyka až príliš nápadne pripomínajú](https://en.wikipedia.org/wiki/C%2B%2B23) Rust. To ma presvedčilo, a tak som sa s prnou vervou vrhol do nastavovania projektu. 

Najskôr som si vyhliadol funkcie, ktorým by som chcel prepísať definíciu cez túto premennú. Konkrétne som si vyhliadol funkcie `execv`, `execve`, `execvp` a `execvpe`. Skopíroval som si ich definície do `extern "C"` bloku v hlavičkovom súbore `softexecenv.h`. Potom som si vytvoril triedu `SoftExecEnv, `kde som urobil wrapper funkciu `our_exec, `ktorú som tam aj implementoval. Následne som si vytvoril implementačný súbor `softexecenv.cpp` pre implementáciu tých štyroch funkcií, ktoré som zadefinoval v hlavičkovom súbore spomenutom pred chvíľou.

Nakoniec som si vytvoril Makefile súbor na uľahčenie zostavovania našej zdieľanej knižnice a príkladný program v jazyku C, ktorý volá funkciu `execvpe`.

## Záver

LD_PRELOAD je premenná, ktorá má veľmi veľa potenciálnych a aj zlých využití. Naozaj vám ju odporúčam začať používať s vašou knižnicou.

Ak sa vám tento článok páčil, tak nezabudnite dať srdiečko a repost na LinkedIne, hviezdičku a boost na Mastodone a upvote a crosspost na Lemmy. Verím, že ak budem mať čas a vyhliadnem si nejakú zaujímavú funkciu, ktorá je na linuxových distribúciach, tak o nej určite napíšem.

> ::: {}
> Posledné slovo: Pre túto sériu (zatiaľ [článok o initramfs](https://typekmatus.blogspot.com/2025/07/initramfs-co-to-je-ako-to-zneuzit.html) a tento) som sa nechal inšpirovať YouTuberom [Nir Lichtman](https://www.youtube.com/@nirlichtman), ktorý robí veľmi podrobné analýzy linuxového jadra apod. Má namierené ku 100 000 odoberateľom, čiže mu choďte dať odber, zaslúži si to.
> :::
