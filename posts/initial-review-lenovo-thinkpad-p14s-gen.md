---
title: "Initial review: Lenovo ThinkPad P14s Gen 5"
date: "2025-08-05"
author: "Matt"
keywords:
  - based
  - cult
  - linux
  - thiccpad
---

Každý, koho poznám, má nejaký laptop. Či sú to tie Chromebooky, [ktorých operačný systém sa má v blízkej budúcnosti spojiť s Androidom](https://www.theverge.com/news/706558/google-android-chromeos-combining-sameer-samat), MacBooky, ktoré stratili to ich slávne svietiace jablko (pozri [tento článok](https://typekmatus.blogspot.com/2024/07/recenzia-macbook-pro-2015.html)), alebo notebooky od Lenova, medzi ktoré od roku 2005 patria aj ThinkPady. Mne sa podarilo jeden zohnať za celkom dobrú cenu na Alze (áno, spadol som do kultu ThinkPadov, ale o tom si povieme až na záver), takže si ho poďme teraz zrecenzovať.

> Poznámka autora: Recenziu o danom zariadení (pokiaľ to nie je napríklad kávovar alebo telefón) vždy píšem na tom danom zariadení.

## Čo sa stalo tomu MacBooku?

 Aby sme mohli pokračovať, tak si musíme zodpovedať túto veľmi dôležitú otázku. Ak mám byť úprimný, tak tá nabíjačka bola v katastrofálnom stave, lebo z nej už začali vyliezať káble. Preto som potreboval nový laptop na cesty. Plus sa mi nechcelo neustále chodiť do FixServisu (slovenský iFixit, ktorý má v Bratislave kamenné predajne skoro všade.

## Kontext

Keď som mal [odbornú prax](https://typekmatus.blogspot.com/2025/06/matus-uncensored-odborna-prax.html), tak som dostal ako pracovný laptop ThinkPad. Nie ten, o ktorom teraz píšem, ale iný (pokiaľ sa dobre pamätám, tak to bol ,,téčkový˝ ThinkPad, ktorý mal okolo 5 rokov). A dosť sa mi páčil. Na klávesnici sa mi písalo tak, ako sa mi nepísalo nikdy predtým (ani na mojej mechanickej šesťdesiatpäťpercentnej mechanickej klávesnici, ktorú mám pripojenú doma). Plus Ubuntu (napriek tomu, že túto distribúciu nikto nemá okrem začiatočníkov rád z ideologických dôvodov) na ňom fungovalo perfektne. Ale to sú už spoilery na ten článok o odbornej praxi, čiže ak chcete, tak si ho choďte prečítať.

## Hárdvér

![](/static/images/initial-review-lenovo-thinkpad-p14s-gen-1.jpg){original-height="4164" original-width="9248"}Tento notebook má v sebe procesor AMD Ryzen PRO 7 8840HS s grafickou kartou AMD Radeon 780M, ktorej výkon som zatiaľ neskúšal, ale čo som tak čítal, tak na Minecraft s ľahkými shadermi a na postaenie megazákladne vo Factoriu to bohate postačí.

Ako som už spomenul, tak klávesnica na tomto notebooku je bohovsky dobrá. V písacom teste Monkeytype som s ňou dosiahol 42 slov za minútu s 98% presnosťou. Plus obsahuje ich legendárny červený knipel, ktorý je v týchto laptopoch odvtedy, odkedy ich IBM dalo začať vyrábať. Rozloženie klávesnice mám ,,československé\'\' QWERTY (československé preto, lebo tam mám aj mäkké e, mäkké r a u s kružnicou nad ním). A ešte je infikovaná aj tlačidlom pre kopilota. Šasi je matné a príjemné na dotyk.

> ::: {}
> Fun fact: Zistilo sa, že toto [tlačidlo je v skutočnosti iba alias pre F23.](https://www.phoronix.com/news/Linux-6.14-Input)
> :::

Displej má rozlíšenie 1920 na 1200 pixelov a pomer strán má 16:10. A ešte ako bonus je tento displej dotykový.

Touchpad je váš štandardný plastový touchpad, ktorý je v laptopoch už veľmi dlho, čiže nič zaujímavé na tomto fronte.

Batéria vydrží osem hodín, čo som zatiaľ netestoval.

Tento notebook je certifikovaný pre špecifikáciu MIL-STD-810H, čo je štandard americkej armády, ktorý určuje veľmi veľa požiadaviek, ako napríklad odolnosť voči prachu, vode, ohňu, extrémnym teplotám, a samozrejme, aj voči pádu z výšky. Samozrejme som to ešte neskúšal, lebo načo.

> ::: {}
> Fun fact: ThinkPady sa používajú na Medzinárodnej vesmírnej stanici, čiže už toto je dôkaz, že sú kvalitné. (By ma veľmi zaujímalo, ako by prežili ostatné laptopy vo vesmíre) 
> :::

A nakoniec SSD je jednoterabajtové.

## Softvér

Na tomto laptope bol predinštalovaný Windows 11, čo je operačný systém, ktorý sa používa iba na hranie masových hier a na CAD softvéry, a ktorý nikto nemá rád.

:::::: {}

:::: {}

Ale to je už téma na ďaľší článok. Samozrejme, vymazal som ho z disku a nainštaloval som tam Arch Linux, ktorý som si rozbil pri nastavovaní automatického dešifrovania disku pri štarte OS. Čiže sa mi to nechcelo nastavovať, a tak som prešiel na Fedoru s prostredím GNOME, na ktorej píšem tento článok. Na Linuxe po spustení príkazu fwupdmgr security v termináli je druhý stĺpec celý zelený, čo znamená, že Fedora využíva všetky hárdvérové funkcie, ktoré tento ThinkPad ponúka. Toto sa mi na žiadnom laptope (ani na tom ThinkPade, ktorý som mal v práci, ale tam boli nejaké mimojadrové moduly) nestalo.

![](/static/images/initial-review-lenovo-thinkpad-p14s-gen-2.jpg){original-height="1200" original-width="1920"}
::::

### Keď si si to prostredie nastavil tak, aby to vyzeralo ako MacOS, tak prečo si si nekúp\--
::::::

Lebo chcem používať linuxovú distribúciu, ktorá sa mi páči, bez toho, aby [som musel používať jedinú distribúciu, ktorá normálne funguje na ARMových Macoch](https://asahilinux.org). Plus MacBooky sa kupujú kvôli dvom veciam: Pokiaľ si už jabĺčkar alebo kvôli MacOS, lebo je to jediná predinštalovaná alternatíva, čo ti ten český zelený mimozemšťan ponúkne :). Keď som mal MacOS nainštalovaný na mojom MacBooku, som tam mal iba 20 hier podporovaných macOSom zo 79, ktoré som naakumuloval za tie roky, čo mám môj Steam účet. Plus nie som jabĺčkar. Mám androidový telefón, počítač, ktorý som si svojpomocne postavil počas bitcoinovej horúčky roku 2021, kedy ceny komponentov išli ,,o hodne hore˝. Plus každá integrovaná grafika vo Windowsovom laptope má o veľmi veľa viac jadier v GPU, ako má ,,emkový˝ Mac.

## Kult ThinkPadov

Internet je veľmi zaujímavé miesto, kde je veľmi veľa kultov. Jeden z nich je aj kult ThinkPadov, ktorý obsahuje fotky nových ThinkPadov, zbierky starých ThinkPadov, príspevky, ako niekto prešiel na dvadsaťročný ThinkPad po používaní Macu, a samozrejme, memečka porovnávajúce MacBooky s ThinkPadmi. Jedno také vám tu dám, aby ste sa aspoň trochu zasmiali :).

:::: {}

![](/static/images/initial-review-lenovo-thinkpad-p14s-gen-3.jpg){original-height="820" original-width="1588"}

V skratke, ThinkPady dosiahli status legendárneho laptopu, ktorý je populárny nielen vo firmách, ale aj medzi nadšencami počítačov, ktorí chcú kvalitný počítač za málo.
::::

## Záver

ThinkPad je doslova superlaptop. Prežije [vesmír](https://en.wikipedia.org/wiki/ThinkPad#Use_in_space), [prach](https://www.youtube.com/watch?v=KmdcutSxmn0), jednoducho je vyrobený tak, aby vydržal aj jadrovú vojnu. Zatiaľ mu dávam 10/10 červených kniplov za priam excelentnú podporu Linuxu, výbornú klávesnicu, na ktorej by som zvládol napísať aj román, a za svietiacu bodku na zadnej strane displeja.

Ak sa vám tento článok páčil, tak ho nezabudnite zdieľať na Mastodon, Lemmy, LinkedIn, vaším známym, kamarátom, jednoducho všade, kde to je možné. Napíšte mi do komentárov, aký ThinkPad používate/by ste chceli (nebojte sa, nemusíte sa prihlasovať do Googlu, je to nepovinné), poprípade napíšte konštruktívnu kritiku na tento článok.
