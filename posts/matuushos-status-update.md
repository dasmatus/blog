---
title: "MatuushOS: Status update"
date: "2024-06-17"
author: "Matt"
keywords:
  - linux
  - mtos
  - status update
---

Približne pred mesiacom som zverejnil [tzv. Status update na MatuushOS](https://typekmatus.blogspot.com/2024/05/matuushos-status-update.html), v ktorom som zdokumentoval stav tejto linuxovej distribúcie. Vtedy bola vo veľmi počiatočnom štádiu, kedy som mal iba počiatočné veci hotové. Ale teraz to už vyzerá lepšie, takže sa poďme na to pozrieť.

## Nástroje: už vo veľmi dobrom stave.

Od poslednej aktualizácie stavu tejto distribúcie sa ten stav základných nástrojov oveľa zlepšil. Napríklad sa už dajú inštalovať (mountovať v tomto prípade) obrazy, ktoré sa s pomocou inicializačného systému `mtinit` automaticky pripájajú pri štarte po prečítaní /etc/fstab. Princíp aktualizačných obrazov bol zmietnutý zo stola, keďže nebudeme prekrývať súborové systémy, ktoré sú už aktivne. Namiesto toho sa budú používať obrazy operačných systémov, ktoré sa budú pripájať po reštarte.

:::::::::: {}
Zostavovací systém je funkčný, i keď sa mi ho podarilo niekoľkokrát rozbiť. Používa GNU Make a už je šesť vydaní dostupných na GitLabe. Ale teraz migrujem na vlastnoručne vytvorený zostavovací systém, ktorý je už napísaný v Ruste, a ktorý sa bude v budúcnosti používať.\

## Wikistránka: Už sa to zlepšuje

## ![](/static/images/matuushos-status-update-1.png){original-height="1634" original-width="2880"} 

 Ako môžete vidieť na obrázku, tak wikistránka MatuushOS je už v oveľa lepšom stave. Už sa tam rozpisujem o konceptoch Imagera a o koncepte celej distribúcie. Ale stále je tam potrebné doplniť obsah.\

## Hosting repozitára: potrebujem pomoc

Zatiaľ čo hosting zdrojových kódov mám vyriešený, hosting repozitára, kde by sa nahrávali obrazy balíkov, ešte nie. Čiže ak ich chcete hostovať, tak sa mi ozvite na Matrix, kde sa spolu dohodneme. 

## Záver

Tento status update bol o trochu kratší ako ten predošlý, lebo je koniec školského roka a ja som sa musel venovať učeniu. Čiže preto ste sa tak dlho načakali. Plus som ešte prešiel na MacBook Pro 2015, o ktorom určite urobím recenziu.

Čo je ale isté, je to, že táto linuxová distribúcia nebude mať logo, keďže vôbec neviem kresliť.

Ale ďakujem za všetky zhlidnutia, ktoré ste mi dali. je to od vás veľmi milé.\

::::::::::
