---
title: "Koniec NixOS: Kontroverzie a čo ďalej?"
date: "2024-04-30"
author: "Matt"
keywords:
  - linux
  - nixos
  - reakcia
---

Kto nebol na internete asi skoro celý mesiac, tak nevie, čo sa deje, ale pre tých, čo to nevedia, tak to priblížim. Dvadsiatého šiestého apríla bol publikovaný [tento blogový článok](https://determinate.systems/posts/on-community-in-nix/) od Eelca Dostru, človeka, ktorý napísal svoju diplomovú prácu na Nix, a ktorý kritizuje komunitu, ktorá sa vytvorila okolo Nixu.

## NixCon + (vložte nejakú zbrojársku spoločnosť sem) = nezáujem

Keď sa zistilo, že Anduril, čo je vlastne zbrojárska spoločnosť, bude sponzorovať NixCon, čo je akcia, kde sa stretávajú ľudia, aby mohli odprezentovať svoje projekty, zážitky a skúsenosti s Nixom/s NixOS. A Anduril je zbrojárska firma, ktorá vyrába drony s umelou inteligenciou, ktoré sú nasadené na americko-mexickej hranici na prevenciu migrantov. Prečo je to zlé? Linuxové komunity (a NixOS najviac) sú ľudia, ktorí sú v drvivej väčšine prípadov proti zbrojárskym spoločnostiam. Bohužiaľ, organizátori nestiahli tohoto sponzora z akcie.

## Nasilu pretlačené ,,vločky˝

Eelco je známy aj svojou netrpezlivosťou. Dokazuje to aj to, že bez schválenia RFC (požiadavka na komentár - väčšina projektov to používa) [číslo 49](https://github.com/NixOS/rfcs/pull/49) pretlačil do CppNixu (implementácia Nixu v C++) implementáciu vločiek. Toto RFC sa stretlo s veľmi negatívnou reakciou pre riešenie viacerých problémov naraz a dodnes je experimentálnou funkciou, ktorej stabilizácia je v nedohľadne. 

## Môj vlastný názor na túto situáciu

Celá táto situácia je (s prepáčením) v riti. [Som ju aj rýchlo okomentoval na mojom Mastodone.](https://fosstodon.org/@ThatGuyMatus/112353775214030420) Ja mám NixOS rád (dokonca som napísal aj recenziu naň, ktorá má najviac videní na tomto blogu), ale má svoje problémy. V prvom rade nemá podporu pre Docker Swarm, keďže má bohviekde zapnutú možnosť `live-restore`. Ďalej sú to vločky, kde len tak nemôžem pridať nový súbor s novými konfiguračnými možnosťami do poľa imports.

:::: {}

![](/static/images/koniec-nixos-kontroverzie-co-dalej-1.jpg){original-height="2400" original-width="1080"}

::::

## Čo ďalej?

Ak nesúhlasíte, čo sa deje v NixOS komunite, tak prejdite na inú distribúciu, napríklad na Gentoo (jeho inštalácia je už veľmi jednoduchá) alebo aj MatuushOS, ktorého tarbally ešte nie sú pripravené (môžete si ich ale zostaviť sami, je to len nemutovateľné LFS so správcom balíkov a všetkým okolo toho). Ak chcete nemeniteľnú distribúciu, tak vyskúšajte ChromeOS Flex alebo FydeOS, ak nechcete, aby Vás Google sledoval. Alebo prejdite na Windows, čo vysoko neodporúčam, keďže tento OS má svoje vlastné problémy a je to zároveň najhorší OS z hľadiska súkromia a z hľadiska rešpektu ku používateľovi. Ja osobne prejdem na ChromeOS Flex na mojom notebooku.

## Záver

Táto celá situácia je veľmi zlá.

Ak ma chcete podporiť, tak mi pošlite Monero na adresu v bočnom paneli alebo si predplaďte Proton z odkazu na vrchu bočného panela. Zdieľajte tento článok všade, kde sa dá, nech čo najviac ľudí vie o tejto situácií. Sledujte ma na mojom Mastodone na Reddite a na LinkedIne, kde niekedy zavesujem rôzne nové projekty. Všetky odkazy sú dostupné aj v bočnom paneli.

# Zdroje

Túto sekciu tu dávam preto, aby si niekto nemyslel, že túto celú situáciu som si vymyslel.

- https://determinate.systems/posts/on-community-in-nix/
- https://discourse.nixos.org/t/nixcon-na-2024-is-getting-sponsored-by-anduril-what-to-do-about-it/41258
- https://save-nix-together.org/
- Moja skúsenosť
