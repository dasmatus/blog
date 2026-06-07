---
title: "Kamarátsky hackaton ,,Čo všetko sa dá urobiť so starými zariadeniami, ktoré nám prejdú pod rukou\""
date: "2025-08-23"
author: "Matt"
keywords:
  - advanced
  - based
  - linux
  - pmos
---

Ak to ešte neviete, tak ja mám veľmi rád výzvy v podobe [dávania iných operačných systémov](https://typekmatus.blogspot.com/2025/02/ako-preco-som-si-nainstaloval-gsi-na.html) [na zariadenia, ktoré mi prejdú pod mojími rukami](https://typekmatus.blogspot.com/2025/08/initial-review-lenovo-thinkpad-p14s-gen.html). Napriek tomu, že by mohol niekto povedať, že to je nudné, tak to **vôbec** nie je, skôr naopak. 

## Trochu kontextu.

Známy môjho známeho mal vo firme likvidáciu, čo znamená, že pri zániku firmy sa z nej dá všetko preč. To na Slovensku znamená, že si môžete odniesť z firmy toľko vecí, koľko chcete. Čiže ten môj známy doniesol dve krabice hárdvéru, kde v jednej boli grafické, sieťové a HBA karty a tablet, o ktorom budem písať neskôr a v tej druhej boli pevné disky a počítačové zdroje plus nejaké SATA káble na napájanie a zopár Ethernetových káblov. Plus známa môjho známeho nás pozvala k sebe, čiže som si sadol s jej bratom spolu s tými dvoma krabicami, on doniesol predĺžovačku, stričili sme si do nej nabíjačky k naším notebookom. A aby toho nebolo málo, tak známa známej nám dala jej starý iPhone 7, aby sme si s ním mohli robiť, čo sa nám zachce

Ako prvý ho mal môj kamarát, ktorý si ho pripojil k jeho notebooku. Keď sa zapínal, tak sme zistili podľa štarovacieho loga, že na neho niekto pred nami dal LineageOS 21.0 (niečo ako to [GSI, ktoré som si dal na môj telefón](https://typekmatus.blogspot.com/2025/02/ako-preco-som-si-nainstaloval-gsi-na.html), ale lepšie). Keď sa zapol, tak tam môj kamarát dal cez adb Geometry Dash. Dal asi 20 pokusov na nejakej mape a potom ten tablet už prenechal mne.

A ešte, ten tablet bol Samsung Galaxy Tab A 9.7, ktorý bol vyrobený v roku 2015 [podľa postmarketOS wiki](https://wiki.postmarketos.org/wiki/Samsung_Galaxy_Tab_A_9.7_2015_(samsung-gt510)).

## Čo som ja spravil s tým tabletom?

> [![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgNzkgNzUiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Ik02MyA0NS4zdi0yMGMwLTQuMS0xLTcuMy0zLjItOS43LTIuMS0yLjQtNS0zLjctOC41LTMuNy00LjEgMC03LjIgMS42LTkuMyA0LjdsLTIgMy4zLTItMy4zYy0yLTMuMS01LjEtNC43LTkuMi00LjctMy41IDAtNi40IDEuMy04LjYgMy43LTIuMSAyLjQtMy4xIDUuNi0zLjEgOS43djIwaDhWMjUuOWMwLTQuMSAxLjctNi4yIDUuMi02LjIgMy44IDAgNS44IDIuNSA1LjggNy40VjM3LjdINDRWMjcuMWMwLTQuOSAxLjktNy40IDUuOC03LjQgMy41IDAgNS4yIDIuMSA1LjIgNi4yVjQ1LjNoOFpNNzQuNyAxNi42Yy42IDYgLjEgMTUuNy4xIDE3LjMgMCAuNS0uMSA0LjgtLjEgNS4zLS43IDExLjUtOCAxNi0xNS42IDE3LjUtLjEgMC0uMiAwLS4zIDAtNC45IDEtMTAgMS4yLTE0LjkgMS40LTEuMiAwLTIuNCAwLTMuNiAwLTQuOCAwLTkuNy0uNi0xNC40LTEuNy0uMSAwLS4xIDAtLjEgMHMtLjEgMC0uMSAwIDAgLjEgMCAuMSAwIDAgMCAwYy4xIDEuNi40IDMuMSAxIDQuNS42IDEuNyAyLjkgNS43IDExLjQgNS43IDUgMCA5LjktLjYgMTQuOC0xLjcgMCAwIDAgMCAwIDAgLjEgMCAuMSAwIC4xIDAgMCAuMSAwIC4xIDAgLjEuMSAwIC4xIDAgLjEuMXY1LjZzMCAuMS0uMS4xYzAgMCAwIDAgMCAuMS0xLjYgMS4xLTMuNyAxLjctNS42IDIuMy0uOC4zLTEuNi41LTIuNC43LTcuNSAxLjctMTUuNCAxLjMtMjIuNy0xLjItNi44LTIuNC0xMy44LTguMi0xNS41LTE1LjItLjktMy44LTEuNi03LjYtMS45LTExLjUtLjYtNS44LS42LTExLjctLjgtMTcuNUMzLjkgMjQuNSA0IDIwIDQuOSAxNiA2LjcgNy45IDE0LjEgMi4yIDIyLjMgMWMxLjQtLjIgNC4xLTEgMTYuNS0xaC4xQzUxLjQgMCA1Ni43LjggNTguMSAxYzguNCAxLjIgMTUuNSA3LjUgMTYuNiAxNS42WiIgZmlsbD0iY3VycmVudENvbG9yIiAvPjwvc3ZnPg==)](https://raphus.social/@dasmatus/115073668459889084){target="_blank"}
>
> ::: {}
> Post by \@dasmatus@raphus.social
> :::
>
> ::: {}
> View on Mastodon
> :::

Nainštaloval som tam postmarketOS tak, že som najskôr ten tablet reštartoval do Download módu, čo je režim pre samsungovské mobilné zariadenia, cez ktorý sa dá nahrať hocičo (aj pohlavné choroby :)). Potom som si stiahol [lk2nd](https://github.com/msm8916-mainline/lk2nd), čo je náhrada predinštalovanej implementácie Fastbootu, a naflashoval som to do boot partície na tom zariadení. Potom som si zostavil obraz postmarketOS s prostredím Phosh cez pmbootstrap a naflashoval som ho do userdata partície. Potom som len musel vymazať system partíciu a reštartoval som ten tablet. Na embede, ktorý som dal nad tento text, je vidieť, ako ten tablet bootuje a ako som ho nastavil.

## Čo spravil môj kamarát s tým iPhonom?

Jailbreakol ho s exploitom, ktorý sa volá [checkra1n](https://checkra.in/). Musel si najskôr naflashovať na USB disk ISO obraz linuxovej distribúcie (nepýtal som sa ho, čo to je, bol som zaneprázdnený flashovaním postmarketOS na ten tablet). Po chvíli sa mu naštartoval iPhone v pongoOS režime, čo znamená, že už ho má jailbreaknutý.

## Záver

Ak vám niečo poviem, tak len to, že ďakujem každému, kto sa na tom ,,hackatone\" (skôr by som to nazval Daj mi tvoje zariadenie a ja urobím s ním niečo, čo by si nečakal) podieľal. Ako hlavná cena pre mňa boli pevné disky s kapacitou 9 TB (4 + 4 + 1 TB). Môj kamarát si zobral o hodne viac diskov a jeden zdroj a zvyšok sme nechali kožkárom na ulici. 

Ak sa vám môj článok páčil, tak ho nezabudnite repostnúť na LinkedIne a dať tam nejakú reakciu. Na Mastodone mi dajte hviezdičku a boostnite to tam. A na Lemmy nezabudnite dať upvote a crosspost do relevantných komunít. 

A nakoniec ešte moje pocity z tohto. Jednoducho, bola to sranda.
