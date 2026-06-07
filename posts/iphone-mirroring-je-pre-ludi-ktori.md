---
title: "iPhone Mirroring je pre ľudí, ktorí neutiekli z jabĺčnej záhrady. scrcpy je pre reálnych frajerov a je aj dostupný v EÚ"
date: "2025-10-24"
author: "Matt"
keywords:
  - android
  - based
  - scrcpy
---

Asi ste už počuli o iPhone Mirroringu. V skratke je to možnosť zrkadlenia displeja vášho telefónu na plochu Macu. Problém je to, že Apple sa bojí Bruselu, a preto, keď si nastavíte váš Mac napríklad do slovenčiny (alebo ak ste reálny frajer, tak do nemčiny), tak túto funkciu tam nebudete mať. Ale čo my, ktorí žijeme od výplaty do výplaty s našími Androidovými telefónmi? Nebojte, my máme niečo lepšie. Volá sa to [scrcpy](https://github.com/Genymobile/scrcpy), čo je program na zrkadlenie displeja na váš počítač s Windowsom, linuxovou distribúciou alebo dokonca aj na macOS. Áno, naozaj, o toľko lepšie sú Androidy.

## Inštalácia

Predtým, ako sa môžeme vrhnúť na inštaláciu, tak si musíme nastaviť telefón na jeho používanie a musíme si stiahnúť také zázračné nastroje, ktoré sa volajú [Android Tools](https://developer.android.com/studio#command-tools), ktoré sú na spodku tej stránky, na ktorú som dal odkaz. Stiahnite a rozbaľte si ich.

Potom musíme aktivovať USB debugovanie. Neviem, ako sa táto možnosť povie po slovensky (ja som jeden z tých frajerov, ktorí používajú svoje veci v nemčine), čiže si musíte konkrétne názvy nájsť sami.

1.  Otvorte si nastavenia
2.  Tam si vyhľadajte informácie o telefóne
3.  Najdite si tam vašu verziu Androidu a klepnite na ňu
4.  Niekoľkokrát poklepajte na číslo zostavenia a poprípade zadajte vaše heslo
5.  Vyhľadajte si v nastaveniach USB debugovanie
6.  Pripojte si telefón s počítačom USB káblom kvôli latencií
7.  Zapnite a potvrďte USB debugovanie
8.  Spusťte na počítači adbd a odsúhlaste interakciu na telefóne s telefónom

A nakoniec choďte na [túto stránku](https://github.com/Genymobile/scrcpy/releases/), tam si zvoľte najnovšiu verziu a stiahnite si ho pre ten operačný systém, ktorý teraz používate. Rozbaľte archív so scrcpy a máte hotovo. Potom už len spusťte scrcpy a voilá, máte plnohodnotný Android mirroring.

## Ako sa používa?

![](/static/images/iphone-mirroring-je-pre-ludi-ktori-1.jpg){original-height="1722" original-width="1490"}Za tú dobu, čo som ho používal, musím konštatovať, že sa používa super. Teraz, keď práve píšem tento článok, tak ho používam na OuterTune, čo je YT Music klient bez rekl\*m a so sťahovaniami bez YT Premium.

> ::: {}
> Som to musel vycenzurovať, lebo si toto určite bude pozerať strýko Google.
> :::

## Záver

Za toto ma asi nebudete mať moc radi, ale zo všetkých telefónov, ktoré som kedy používal, má Android najviacej funkcií, ale to za cenu absencie živých dlaždíc, ktoré boli na mojom prvom telefóne - na mojej [Lumií](https://typekmatus.blogspot.com/2024/04/recenzia-microsoft-lumia-435-dual-sim.html). V porovnaní s iPhonmi sú Androidy podstatne lacnejšie ako ich ,,šťavnatejšie\" náprotivky.

Ak sa vám tento článok páčil, tak určite mi dajte na tento článok srdiečko a repost na LinkedIne, hviezdičku a boost na Mastodone alebo aj upvote a crosspost na Lemmy.

A nakoniec, Androidy sú lepšie ako iPhony.
