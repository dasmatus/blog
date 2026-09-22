---
title: "Ako mi Claude Code pomohol zmigrovať všetky články z Bloggeru sem"
date: "2026-06-07"
author: "Matúš"
keywords:
  - claude
  - migracia
  - blogger
---

Asi každý, kto číta tento blog dlhšie, vie, že som mal s Bloggerom istý problém. Konkrétne — žiadna podpora Markdownu, nulová kontrola nad dizajnom a závislosť na Googli, čo je pri mojom FOSS-ovom nastavení mysle skoro fyzicky bolestivé. Napísal som o tom aj [celý článok](/posts/blogger-jeho-najvacsi-problem.html). Tak a teraz vám môžem oznámiť: je to konečne minulosť.

Včera som začal a aj dokončil migráciu z Bloggeru na môj blog, ktorý je postavený na Pandocu.

## Prečo práve Pandoc + Vercel

Pandoc je nástroj, ktorý konvertuje Markdown do HTML (a do kopca ďalších formátov, ale to tu nie je podstatné). Výsledkom je statický blog — žiadna databáza, žiadny PHP, žiadne WordPress pluginy, ktoré vám o tretej ráno rozbijú produkciu. Len Markdown súbory, šablóna a `just build`.

Hosting som dal na Vercel, čo znamená, že každý commit na main vetvu automaticky nasadí novú verziu. Zadarmo. Bez konfigurácie. Jednoducho frčí.

Celý zdrojový kód je otvorený, čo pre mňa ako FOSS-ového nadšenca znamená, že som konečne v pohode.

## Kde vstúpil Claude Code

Tu sa dostávame k jadru veci. Migrovať ručne 40+ článkov z Bloggeru by bol projekt na minimálne tri dni, keby som to chcel spraviť poriadne. Každý článok mal iné formátovanie, obrázky s rôznymi atribútmi, linky na iné príspevky, blockquoty... Blogger exportuje obsah ako XML, čo je formát, pri pohľade na ktorý vás chytí existenciálna kríza.

[Claude Code](https://code.claude.com/) (ak neviete, čo to je — v skratke agentická AI priamo v termináli, viac v [tomto článku](/posts/claude-cowork-najlepsich-20-eur-co-som.html)) dostal zadanie: prekonvertuj exportované Blogger články do Pandoc Markdownu so správnymi frontmatter metadátami, zachovaj dátumy, tagy a obrázky.

Nebolo to tak, že by som zadal jeden prompt, odišiel sa najesť a vrátil sa k hotovej práci. Musel som s ním iterovať — opravovať edge casy, kde Blogger mal nejaké zvláštne inline HTML, kontrolovať, či sedí formátovanie obrázkov, overovať, či sa žiadny článok nestratil. Ale namiesto troch dní to trvalo jeden deň. A väčšinu toho dňa som ani nebol pri počítači.

To je za mňa dosť silný argument.

## Výsledok

Všetkých 40+ článkov je tu, vrátane obrázkov, dátumov a tagov. Blog beží na Verceli, domovská stránka sa generuje automaticky zo zoznamu postov, a celý build trvá pár sekúnd.

Pôvodný Blogger blog som vymazal. Definitívne. Čiže ak ste bookmarkovali starú adresu — aktualizujte si záložky, lebo tam už nič nenájdete.

## Záver

Úprimne, mal som to spraviť oveľa skôr. Blogger je dobrá platforma pre niekoho, kto nechce riešiť nič technické — ale pre mňa, ktorý píše o Linuxe a Ruste a má v termináli viac okien ako v Gnoме, pôsobilo písanie v WYSIWYG editore ako písanie kódu v Notepade. S Wordartom.

Claude Code dokáže znudiť prácu, na ktorú by ste normálne potrebovali dni — a to za zlomok času. Za mňa based.

Ak sa vám tento článok páčil, nezabudnite ho zdieľať na Mastodone, LinkedIne alebo Lemmy. Srdiečko a repost sú vždy vítané.
