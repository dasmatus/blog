---
title: "Initramfs: Čo to je a ako to využiť v náš prospech"
date: "2025-07-10"
author: "Matt"
keywords:
  - advanced
  - initramfs
  - linux
  - rust
---

Podľa mojich štatistík, ktoré si pozerám, tak mojou druhou najväčšou skupinou su tí, ktorí sú na nejakej linuxovej distribúcií (mne sa to tam zobrazuje iba ako ,,Linux˝). Prečo som práve toto napísal? Lebo práve táto skupina ľudí nepriamo štartuje svoj systém cez niečo, čo sa volá initramfs. Poďme sa to pozrieť na to, čo to je a ako to využiť v náš prospech.

## Čo to je?

V skratke je initramfs pico-operačný systém, ktorý je skomprimovaný cez program, ktorý sa volá cpio, a ktorý sa pri spustení systému rozbalí do operačnej pamäte. Je to starý, ale spoľahlivý spôsob, ako skomprimovať súbory a používa sa od nepamäti. Väčšinou sa komprimuje do formátu, ktorý sa volá Gzip.

Initramfs sa využíva na rôzne veci. Či už na resetovanie hesla, pripojenia obskúrne nastaveného média (napríklad 40 diskov, ktoré sú v MergerFS zväzku (MergerFS = súborový systém, ktorý slúži na vytvorenie jedného superdisku z viacero menších diskov) zašifrované cez LUKS + polovica diskov má iný súborový systém), alebo v našom prípade na reset/obnovu/aktualizáciu operačného systému. 

## Ako to funguje?

Najskôr sa z operačného systému nastavia potrebné parametre (v našom prípade sú to názov obrazu, server, odkiaľ sa ten obraz bude sťahovať **bez názvu obrazu**, SHA256 kontrolný súčet, cieľový disk na reset/obnovu/aktualizáciu a či chcemé preformátovať disk), ktoré sa dávajú v prípade GRUBu dávajú ako Bashu-podobná funkcia typu menuentry za cestu k linuxovému jadru, kde druhý riadok slúži na špecifikáciu cesty ku initramfs cez keyword initrd. 

Keď sme ten súbor uložili, tak stačí reštartovať počítač a reset/obnova/aktualizácia sa začne. Akonáhle sa tento proces dokončí, tak sa zvyšné miesto rozdelí medzi zavádzajúcou partíciou a a partíciou, kde má používateľ priečinok.

A nakoniec program, ktorý toto spravil, reštartuje systém.

## Existuje toto vôbec?

[Áno, existuje](https://github.com/MatuushOS/recenv). Ja som to nazval recenv, čo je skratka pre Recovery Environment. Ale na to, aby sa dalo toto ,,zneužité˝ initramfs prostredie použiť, tak potrebujeme disk s troma partíciami a internetové pripojenie cez kábel (taktiež známe ako Ethernet).

Funguje to následovne:

1.  Keď linuxové jadro uvidí program/skript (nezáleží, hlavne aby bol označený predtým, že ho môže spustiť každý cez príkaz chmod +x), ktorý sa volá init, tak ho spustí.
2.  Tento program/skript pripojí devtmpfs, procfs a sysfs (špeciálne súborové systémy, ktoré mal ešte prvý Unix) na /dev, /proc a na /sys.
3.  V normálnom prípade by zavolal switch_root a cezeň by spustil reálny init, ale keďže jadru je jedno, čo spúšťa (hlavne nech sa to volá init a je to spustiteľné), tak tento program/skript zavolá program, ktorý obnoví/aktualizuje/zresetuje disk podľa parametrov, ktoré jadro uloží v /proc/cmdline.

## Záver

Initramfs je jedna z najlepších vecí, čo existuje na linuxovom systéme. Pokiaľ viem, tak ani BSD systémy, ani MacOS (a Windows už vôbec, ale aj tak to nie je Unixu podobný operačný systém) nemajú toto tu, čo sa tu dá urobiť.

Ak sa vám tento článok páčil, tak ho neváhajte zdieľať svojej rodine, priateľom, jednoducho každému.
