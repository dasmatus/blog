---
title: "MatuushOS: Status update + plány do budúcna"
date: "2025-09-06"
author: "Matt"
keywords:
  - advanced
  - linux
  - mtos
---

Neskutočné sa stalo skutočným: Vyšiel nový Status update pre môj operačný systém, ktorý sa volá MatuushOS. Tentokrát mám veľmi veľa noviniek, ktoré sa udiali na tomto operačnom systéme. Čiže sa na ne poďme vrhnúť.

## [Recenv](https://gitlab.com/MatuushOS/recenv)

O Recenve som rozprával už predtým v [článku o Initramfs](https://typekmatus.blogspot.com/2025/07/initramfs-co-to-je-ako-to-zneuzit.html), ale tým, že vás mám rád, tak vám zhrniem, čo to je. 

Recenv je veľmi minimálne obnovovacie prostredie, ktoré sa nastavuje cez parametre, ktoré sa predávajú linuxovému jadru. Cezeň sa dá aktualizovať/obnoviť operačný systém. Pri jeho tvorení som sa inšpiroval obnovovacím procesom, ktorý je vo Windowse, MacOS a na Androide.

### Ale načo vytvárať ďaľší aktualizačný systém, keď existuje systemd-sysupdate a bootc?

Preto, lebo MatuushOS je 100% bez systemd. Toto rozhodnutie bolo urobené z dôvodu, že systemd je [napísané v céčku](https://github.com/systemd/systemd), čo je jazyk, kde sa stráca produktivita z dôvodu trápenia sa so zostavovacím systémom a ktorý je [50 rokov starý](https://en.wikipedia.org/wiki/C_(programming_language)), čiže vôbec nie je podľa mňa vhodný na nové projekty. A áno, aj systemd-sysupdate [je napísaný v tomto jazyku](https://github.com/systemd/systemd/tree/main/src/sysupdate). sd-sysupdate vyžaduje, aby tie obrazy boli vytvorené cez [mkosi](https://github.com/systemd/mkosi), čo je zase súčasť Systemd ekosystému.

[bootc](https://github.com/bootc-dev/bootc) je síce napísané v Ruste, ale funguje na základe kontajnerov. Recenv funguje na základe obrazov, ktoré sú vytvorené cez fallocate. A samozrejme, vyžaduje systemd.

Zato recenv beží ešte pred spustením operačného systému v initramfs, čiže je jedno, aký inicializačný systém sa používa. Po jeho skončení sa jednoducho reštartuje naspäť do operačného systému. Plus som tam pridal aj podporu pre LVM a LUKS. Na rozdiel od týchto dvoch vie recenv zresetovať aj celý operačný systém priamo z initramfs, čiže nemusíte nemusíte mať poruke USB kľúč s danou distribúciou.

Plánujem do Recenvu pridať TUI cez [Ratatui](https://lib.rs/ratatui), ktoré bude náhradou za všetky println! makrá, ktoré sa v tomto prostredí nachádzajú.

## [mkiso](https://gitlab.com/MatuushOS/mkiso)

Odkedy som publikoval posledný Status update, tak sa toho v oblasti zostavovania môjho operačného systému veľmi veľa zmenilo. Už to nie je nezávislá distribúcia, ale už je to ,,iba˝ distribúcia založená na Alpine Linuxe, čo by sa dalo kvôli jej minimalistickosti povedať, že to je v podstate Linux From Scratch, ale so správcom balíkov. 

Musím to zostavovať na GitHube z toho dôvodu, že tam je maximálny limit, koľko môže ten runner bežať, 6 hodín. Len tým, že predtým som experimentoval s MatuushOS na Gentoo, tak to bolo nejaké štyri hodiny.

Celé mkiso som prepísal do Shell skriptu, ktoré po zlepšení toho, ako pm funguje, prepíšem do MtScriptu.

## [Mii](https://github.com/MatuushOS/mii) 

> ::: {}
> Po tomto článku sa budem modliť, aby mi do schránky neprišlo [predvolanie na súd](https://en.wikipedia.org/wiki/Intellectual_property_protection_by_Nintendo).
> :::

Mii znamená MatuushOS initial installer, čo v slovenčine znamená počiatočný inštalátor MatuushOS a ako všetko okolo tejto distribúcie (okrem dokumentácie a scriptpakov, prvé je napísané v Markdowne a druhé je súbor skriptov, ale k tomu sa ešte dostaneme) je napísané v Ruste.

Mii funguje na základe tzv. scriptpakov, čo je sada skriptov, ktoré môžu byť napísané buď v Shell skripte alebo v MtScripte. Tieto skripty sú roztriedené do priečinkov podľa toho, čo robia.

### Prečo nepoužiť Calamares alebo os-installer?

[Calamares](https://github.com/calamares/calamares) je inštalátor, ktorý používa 99% linuxových distribúcií. Je veľmi prispôsobiteľný čo sa týka vzhľadu a počtu krokov, ktoré môže používateľ prejsť. Problém s ním je taký, že je napísaný v [C++](https://en.wikipedia.org/wiki/C++), čo je síce lepšia verzia céčka, ale stále sa v ňom dajú urobiť také isté (a ešte horšie) chyby, aké sa dajú robiť v ,,neinkrementovanom˝ céčku. Keby sme chceli upraviť vzhľad aplikácie, tak musíme znovu zostaviť celý Calamares, čo trvá nejaký čas.

[os-installer](https://gitlab.gnome.org/p3732/os-installer) je inštalátor, ktorý je síce napísaný v Pythone, ale zato má používateľské prostredie, ktoré pripomína GNOME, čiže sa nebude hodiť na živý obraz s prostredím, ktoré nie je GNOME. Plus sa konfiguruje [veľmi divne](https://github.com/arkanelinux/os-installer-config).  \

## Dokumenatácia

Tej som sa vôbec nedotýkal. Stále tam chýbajú stránky o Recenve. Asi to tam pridám neskôr alebo prestavím generovanie dokumentácie tak, aby to pridávalo Markdown súbory z jednotlivých repozitárov.

## Prečo to trvalo tak dlho napísať tento článok?

Lebo som sa venoval iným veciam, ktoré mali väčšiu prioritu, ako napríklad [odborná prax](https://typekmatus.blogspot.com/2025/06/matus-uncensored-odborna-prax.html). Venoval som sa aj portovaniu môjho telefónu (Samsung Galaxy A53 5G) na postmarketOS, čo je distribúcia, ktorá je taktiež založená na Alpine Linuxe a ktorej cieľom je mať najaktuálnejšie linuxové jadro na čo najviac zariadeniach.

## Záver

Toto bol prehľad toho, čo sa zmenilo vo svete MatuushOS.

Ak sa vám tento článok páčil, tak ho nezabúdajte zdieľať na LinkedIne, Mastodone, Lemmy, jednoducho všade. Ak mi držíte palce v tom, že si zajtra ráno nenájdem v schránke predvolanie na súd, tak do komentárov na LinkedIne, Mastodone a Lemmy dajte palec hore.

> Ale aj tak z tohoto blogu aj z MatuushOS zarábam presne nula centov.
