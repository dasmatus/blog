---
title: "Môj ThinkPad po mesiaci: ako sa s ním pracuje?"
date: "2025-09-25"
author: "Matt"
keywords:
  - linux
  - review
  - thinkpad
---

Piateho augusta som napísal článok o [mojom ThinkPade](https://typekmatus.blogspot.com/2025/08/initial-review-lenovo-thinkpad-p14s-gen.html), kde po jeho napísaní mi napadlo, že by som mohol urobiť dlhodobú recenziu o tomto stroji.

## Hárdvér: Dostatočne výkonný na to, aby rozbehal 99% mojej knižnice na Steame a veľmi rýchlo skompiloval MatuushOS.

Ako prvé mi napadlo, že by som mohol otestovať jeho výkon v rôznych hrách, ktoré som vtedy hral na Steame. Testoval som ich na Fedore 42.

> ::: {}
> Poznámka autora: Všetky hry, ktoré som testoval, mali skompilované shadery, čiže ak by vám náhodou vaše hry išli horšie, tak počkajte, kým tie shadery Steam skompiluje
> :::

Ako prvú hru som vyskúšal [Haste](https://store.steampowered.com/app/1796470/Haste/). Je to v podstate Sonic, ale so ženou a s perkami. Keď som to po prvý krát zapol na tomto laptope, tak som mal niekde medzi 10 a 20 FPS. Ale po nastavení FSR v Steame a v hre (plus po znížení grafických nastavení na Medium a znížení rozlíšenia na 1280x720) som mal niekde medzi 30 až 60 FPS.

Po nainštalovaní a spustení [Factoria](https://factorio.com) som okamžite videl tú optimalizáciu, ktorú tí naši bratia Česi z Wube Software dali do tejto hry. Hra bežala na stabilných 60 FPS, a to aj na serveri s endgame technológiami, ktoré spôsobujú zníženie FPS. 

Následovne som testoval [No Man\'s Sky](https://store.steampowered.com/app/275850/No_Mans_Sky/). Po nainštalovaní som hneď videl, ako plynule ide táto hra. Otvoril som si môj svet, kde mám najvačší progres, a videl som, ako mi moje FPS spadli na cca. 30 FPS. Po vzlete z mojej materskej lode som využil ten červený knipel ako páčku na pilotovanie lode, kde sa mi FPS zdvihli niekde na 60 FPS. Lenže potom som veľmi rýchlo zistil, že ten knipel má príliš veľkú senzitivitu, čiže som musel ísť do nastavení ju znížiť. Potom sa už tá moja loď dala lepšie pilotovať.

> ::: {}
> Poznámka autora: Po zapnutí FSR to už bolo lepšie
> :::

A nakoniec som testoval Counter-Strike 2. Tam po znížení detailov na nízke a po zapnutí FSR som mal nejakých 112 FPS. Vyskúšal som jeho výkon na surf_boreas, cs2_aim a na ,,prefire\" mapách (typ máp, kde je cieľom si osvojiť miesta, odkiaľ môžete dostať guľku do hlavy od nepriateľov). Nakoniec som vyskúšal Deathmatch s botmi a Wingman 1v1 proti kamáratovi na Dust dvojke, Vertigu, Overpasse a na Miragei. Až na extrémne blikanie v Steam overlayi a v buy menu (ktoré ovládam naspamäť) som vedel toho môjho kamaráta v tejto hre poraziť rovno dvakrát. Naschvál som neskúšal kompetetívny matchmaking z dôvodu, že doma mám 240Hz monitor, na ktorom sa mi hrá lepšie.

> Ak mám byť úprimný, tak to moc nebolo férové kvôli tomu, že on hral cez GeForce Now.

### Povinnosti a programovanie

Keďže som programátor a chodím ešte do školy, tak si musím robiť svoje povinnosti. 

Ako prvé som vyskúšal skompilovať [MatuushOS](https://gitlab.com/MatuushOS/mkiso). V čase písania článku bol MatuushOS založený na Gentoo. Ale potom som prehodil MatuushOS na Alpine Linux, čo výrazne skrátilo kompilovací čas. 

Keď bol MatuushOS založený na Gentoo, tak to skompilovanie trvalo okolo troch hodín. Teraz to trvá trikrát menej.

Keďže študujem odbor informačné a sieťové technológie na mojej škole, tak to obnáša aj povinnosť mať nainštalovaný Cisco Packet Tracer, čo je simulátor sietí na Cisco zariadeniach, ktorý bol skritizovaný nejedným učiteľom, ktorý u nás učí tento predmet, pre jeho nerealistickosť. Tento program funguje bez chýb a bez zasekávania sa.

## Operačný systém: Prešiel som na Sway

Operačný systém sa vôbec nezmenil. Používam Fedoru 42, ale plánujem prejsť na MatuushOS, keďže už je tam ten inštalátor kompletný. 

Čo sa týka prostredia, tak ako som už spomenul, tak som prešiel na Sway. 

## Ako vyzerá po mesiaci?

:::: {}

![](/static/images/moj-thinkpad-po-mesiaci-ako-sa-s-nim-1.jpg){original-height="1200" original-width="1600"}

\
Ako môžete vidieť, tak na tom počítači mám rozbitý plast v dolnom ľavom boku. Neviem ako, ale cestoval som s ním na Maltu. Dal som ho preskenovať röntgenom na bezpečnostnej kontrole na Schwechate (letisko pri Viedni, odkiaľ lieta do celej Európy a do sveta 99% Slovákov; z Bratislavy to lieta iba na východ Európy), vložil som si ho do tašky a išiel som si kúpiť redukciu (na Malte používajú z historických dôvodov britské zásuvky). Potom, keď som si pri bráne, kde sme mali odlet, vybral ten laptop, tak som zistil, že tam mám na rohu odtrhnutý kus plastu. Tak som si to odfotil (tú fotku som stratil, lebo som, ako správny turista, toho veľmi veľa nafotil :)) a dal som to naspäť.
::::

Určite ste si všimli tú krabičku, ktorá je vedľa tohto ThinkPadu. To sú moje bluetoothové slúchadlá. Bluetooth na tomto počítači funguje excelentne aj napriek stereotypu, že Bluetooth audio na Linuxe je čistý odpad. Jediný prípad, kedy to nefungovalo tak, ako to má fungovať, bol v prípade, keď som si s nimi na tomto notebooku pustil Counter-Strike 2 a dal som si jednú hru s botmi. Tie zvuky boli oneskorené. Dokonca im funguje aj mikrofón, čiže som mohol v pohode zavolať cez Signal mojej mame z Malty na Slovensko.

## Záver: ako sa s ním pracuje?

Zatiaľ s ním mám výbornú skúsenosť. Len nehrajte na vstávanom displeju CSko.

Ak sa vám tento článok páčil, tak nezabudnite dať palec hore a repost na LinkedIne, hviezdu a boost na Mastodone a upvote a crosspost na Lemmy. Samozrejme, ak si prenajmete billboard, tak taktiež budem rád :).
