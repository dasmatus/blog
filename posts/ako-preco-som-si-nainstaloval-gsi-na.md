---
title: "Ako a prečo som si nainštaloval GSI na môj telefón"
date: "2025-02-10"
author: "Matt"
keywords:
  - android
  - degoogle
  - linux
---

Asi pred rokom som [napísal článok o samsungových telefónoch](https://typekmatus.blogspot.com/2024/02/skusenosti-so-samsungovymi-telefonmi.html), kde som ich skritizoval za neštandardný prístup flashovania alternatívnych operačných systémov a za nutnosť používať Odinovské .tar súbory. Ale to sa všetko zmenilo. Som starší, múdrejši, a rozumnejší, ako som bol vtedy. Plus pribudlo veľmi veľa návodov a zdrojov, z ktorých sa dá čerpať pre túto tému. Tak sa poďme spolu pozrieť na to, ako som si dal GSI na môj telefón.

> Poznámka: GSI je skratka pre Generic System Image (generický obraz operačného systému). Viac si o tomto formáte môžete prečítať [tu.](https://source.android.com/docs/core/tests/vts/gsi)

## Prečo?

Primárnym dôvodom, prečo som sa rozhodol toto spraviť, je, že na predinštalovanom Androide, ktorý dostanete spolu so zariadením, je príliš veľa softvérového odpadu. Máte tam aplikácie od Samsungu, Googlu a z nejakého dôvodu aj od Microsoftu a Mety. Pri Samsungu je logické, prečo tam chcú mať svoje aplikácie. Pri Googli taktiež, plus je to aj tým, [že tam máte mobilné služby od Googlu.](https://www.einfochips.com/blog/how-to-obtain-googles-gms-license-for-android-devices/) Ale nechápem, načo sa mi tam mieša Satya Nadella a Bill Gates s jeho OneDrivami, Officami, a iným odpadom od tejto spoločnosti (nedá sa to odinštalovať, len vypnúť) a Zuck s Facebookom. Ale teraz upusťme, prečo toto všetko je tam (nie je to téma na tento článok) a vráťme sa k otázke v podnadpise. Postupom času sa mi telefón spomaľoval, lebo sa mi tam Samsung rozhodol pridať vykradnuté filtre zo Snapchatu, Google zas Gemini, ktoré je na telefóne dobré iba na dve veci: Špehovanie a ,,pomoc\" pri určitých typoch prác v škole (asi viete, čo tým myslím); A Microsoft tam zas doinštaloval bez môjho dovolenia horší KDE Connect, ktorý sa nedá odinštalovať. A Meta mi tam z nejakého dôvodu doinštalovala Facebook, ale keďže nie som dôchodca alebo milovník umenia vygenerovaného umelou inteligenciou, tak som si ho odinštaloval. 

## Ako?

> ::: {}
> Poznámka autora: **Nepokúšajte sa toto napodobniť doma**. **[Toto tu je len zjednodušená verzia návodu, [ktorý sa tomu venuje, a ktorý je na námorné míle konkrétnejší než tento článok.](https://xdaforums.com/t/tutorial-a53x-install-twrp-flash-custom-rom-gsi-fixes-for-almost-every-problem.4668967/)]**
> :::

Veľmi jednoducho alebo zložito, záleží od skúseností a schopnosti nepremeniť si telefón na tehlu. Nebudem to tu celé rozoberať, ale v skratke ide o to, že si odomknete zavádzač, nainštalujete si [TWRP](https://twrp.me/about/), naflashujete si upravené linuxové jadro pre stabilitu a nakoniec si naflashujete GSI obraz na telefón. Znie to síce náročne, ale v skutočnosti to nie je.

## Aké GSI som si zvolil a ako sa používa?

Zvolil som si [AOSP PHH GSI](https://github.com/TrebleDroid/treble_experimentations) od GitHubového projektu/osoby PHH. Ide o kompletne čistý Android bez MANGA korporácií (Meta, Amazon, Netflix, Google a Apple), kde máte len kontakty, aplikáciu na telefonovanie a veľmi základný prehliadač plus extra možnosti v nastaveniach. Našťastie existuje ADB, ktoré sa taktiež povoľuje z vývojárskych nastavení, čiže cez to som si nainštaloval obchod s aplikáciami, ktorý sa volá [Droid-ify.](https://github.com/Droid-ify) Je to obchod s aplikáciami s otvoreným softvérom, cez ktorý som si doinštaloval Insular, čo je program, ktorý vám vytvorí pracovný profil, a pomocou ktorého môžete izolovať niektoré aplikácie s podozrivými praktikami, a ktoré majú uzavretý zdrojový kód (Discord, WhatsApp, všetko, čo potrebuje GMS). 

GSI sa používa ako keby ste mali Google Pixel (telefón od Googlu; a áno, viem, ako sa ten telefón používa). Niektoré funkcie sú nedostupné, ako napríklad Gemini, ale existujú aj ich prehliadačové ekvivalenty, ktoré fungujú. 

## Záver

Ešte nemôžem povedať, ako to funguje (nainštaloval som to v nedeľu), ale môj telefón je rýchlejší, menej otravný, menej strašidelnejší a menej mi ničí mentálne zdravie takou jednou aplikáciou, ktorú mám v pracovnom profili, a o ktorej som už [písal aj článok](https://typekmatus.blogspot.com/2024/05/edupage-lms-cms-ktore-obsahuje.html).

Ak sa vám tento článok páčil, tak tento článok okomentujte (tie komentáre ajtak uvidím, čí sú vhodné alebo nie, ale skôr preferujem vhodné a pozitívne komentáre 😊), zdieľajte ho na Mastodone, Lemmy, Xku, kamarátom, rodine, jednoducho každému, kto sa o takéto veci zaujíma.
