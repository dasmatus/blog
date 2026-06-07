---
title: "Skúsenosti so Samsungovými telefónmi: ako to (ne)robiť"
date: "2024-02-18"
author: "Matt"
keywords:
  - android
  - linux
  - rant
---

Každý asi pozná Samsung. Ale asi málo ľudí vie, že na niektoré samsungovské telefóny je dosť málo obrazov alternatívnych androidových distribúcií a alternatívnych OS a bloatwaru. V tomto článku sa tomu povenujeme.

## Áčkové telefóny

Tento problém trápi hlavne áčkovú sériu týchto telefónov tejto kórejskej značky, keďže majú veľmi divný spôsob ,,flashovania\" OS na disk. A to taký, že namiesto Fastbootu, čo je štandard pre flashovanie telefónov s Androidom, používajú protokol pomenovaný po vikingskom bohovi Odinovi. Samozrejme, že je predvolene vypnutý z bezpečnostných dôvodov, ale dostať sa do sťahovacieho módu (čo je vo svojej podstate grafické rozhranie pre ten protokol) je vcelku náročné. Najskôr sa musíte dostať do vývojárskych nastavení, čo je proces, ktorý zahŕňa veľmi rýchle ťukanie na zostavové číslo Androidu v informáciach o telefóne, zadanie PIN kódu/gesta/hesla, aby ste ten mód mohli povoliť, a nakoniec povoliť vývojársky režim v nastaveniach. Nakoniec musíte odomknúť zavádzač, čo sa robí vypnutím telefónu, pripojením nabíjačky a držaním **obidvoch** tlačidiel hlasitosti a tlačidla zapnutia, čo si už vyžaduje dve ruky. A keď to naštartuje do bielozelenej obrazovky so symbolom sťahovania, kde musíte potvrdiť, či si chcete odomknúť zavádzač a zároveň **si vymazať všetko na úložisku telefónu**. A až potom môžete začať flashovať. Úprimne, táto časť je tá najťažšia. Potom sa už do sťahovacieho módu môžete dostať cez ADB.

###   Prečo sa na ne nedá flashovať hocičo, čo chcem?

Preto, lebo ich Samsung  nezahrnul do programu Project Treble. [Project Treble](https://android-developers.googleblog.com/2017/05/here-comes-treble-modular-base-for.html) je vlastnosť Androidu, ktorá pridáva tzv. vendor vrstvu, v ktorej je všetok proprietárny mikrokód pre všetky komponenty v telefóne. Čiže tí, ktorí sa starajú o androidové distribúcie (pri alternatívnych mobilných OS, ako napríklad postmarketOS, to neplatí z dizajnových dôvodov), sa už nemusia zaoberať kopírovaním firmvéru rootnutého Androidu výrobcu do svojej distribúcie. Ale naspäť k spôsobom Samsungu. Ako som už spomenul, Samsung nedodržiava štandardy a trendy v Androidovom svete. A teraz už konečne k odpovedi k otázke v podnadpise. Lebo tam musíte používať [program s rovnakým menom, ako flashovací protokol](https://samsungodin.com/). A k tomu musíte flashovať .tar súbory do piatich rôznych častí disku telefónu. Toto je tak zlé, že keď si naflashujete .img obraz, tak Vám telefón nenaštartuje.

![](/static/images/skusenosti-so-samsungovymi-telefonmi-1.jpg){original-height="360" original-width="520"}\

## Prehnane veľa predinštalovaného softvéru

Samsungy nie sú Pixely. To si povieme na rovinu. Na všetkých samsungových telefónoch (aj tabletoch) sú 3 sady softvérov. Od Microsoftu, Googlu a od Samsungu. A ešte ak ho pripojíte k internetu, tak sa Vám bude ešte sťahovať Facebook ,,na drzovku\". A to nie je všetko. Do toho Vám bude vyskakovať utilita AppCloud, ktorá je viac než utilita reklama na aplikácie z Galaxy Storu. Je to veľmi otravné a nič také sa nedeje na Pixeloch a na čínskych telefónoch (ktoré ale majú svoje problémy).

## Záver

Samsungovské telefóny sú veľmi preplnené zbytočnosťami a sú až príliš obmedzujúce. Nie sú softvérovo čisté a nemajú veľa možností, ako na ne nainštalovať inú androidovú distribúciu.
