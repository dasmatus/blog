---
title: "MatuushOS: Status update"
date: "2024-05-19"
author: "Matt"
keywords:
  - linux
  - matuushos
  - mtos
---

Kto nevie, tak ja pracujem na vlastnej linuxovej distribúcií, ktorý sa volá MatuushOS. Táto linuxová distribúcia je zaujímavá tým, že väčšina nástrojov je napísaná v Ruste, ale teraz tu nebudem rozoberať technické detaliy mojej distribúcie. Dnes sa ideme pozrieť na to, v akom stave je táto distribúcia.

## História tejto distribúcie

Táto distribúcia začala na začiatku koronavírusového lockdownu (kedy som sa naozaj začal zaujímať o Linux, predtým som ho mal vo VirtualBoxe) ako distribúcia založená na Ubuntu. Vytvoril som ju a nepravidelne som vydával aj ISO obrazy distribúcie. Bola veľmi základná (neskoršie verzie obsahovali aj ,,vyryžovaného\" správcu okien i3) a primárne som s ňou experimentoval, napríklad tak, že som sa snažil vymeniť SystemD za OpenRC, čo sa ale nepodarilo. Keď som v deviatom ročníku na základnej škole vedel, že z Monitoru (slovenské zmanipulované celoštátne testovanie, ktoré skoro každý robí zbrklo, aby išiel čo najskôr preč zo školy, a ktoré bežný človek nevie spraviť na 100%, lebo sa to nedá), a na to, aby som získal body na príjmačky, tak som objavil [deviatacku súťaž, v ktorej boli štyri kategórie.](https://spsehalova.sk/sutaz-pre-deviatakov/) Prihlásil som sa do nej s mojou linuxovou distribúciou do kategórie Informačné Technológie, a pracoval som na nej doslova non-stop. Odpoveď, či som sa na tú školu dostal, je v bočnom paneli. 

## Základné nástroje: V nie moc ideálnom stave, ale každým dňom sa ich stav lepší.

Keďže táto distribúcia je väčšinou napísaná v Ruste, tak som pre ňu musel urobiť aj vlstné nástroje, ako napríklad správcu balíkov, ktorého zdrojový kód som už dvakrát prepísal (aj keď nie tak veľmi, pretože pôvodná verzia stále existuje). Mám aj **veľmí základný** inicializačný systém, ktorý pomocou for slučky číta súbory a vykonáva príkazy, ktoré sú v tom súbore. Ale najskôr sa poďme pozrieť na správcu balíkov, konkrétne na jeho druhú verziu.

Pri ňom je situácia lepšia. Používa obrazy SquashFS, ktoré sa v prípade MatuushOS delia na dva druhy: balíkový obraz a obraz operačného systému, ktorého podmnožina je aktualizačný obraz, cez ktorý sa distribujú kritické záplaty operačného systému. V čase písania tohoto článku ešte nie je koncept aktualizačných obrazov implementovaný, keďže tento koncept treba implementovať do nástroja, ktorý sa volá Imager, ku ktorému sa dostaneme za chvíľu. Ale teraz poďme na veci, ktoré nie sú implementované. Konfiguračný súbor, ktorý sa nachádza na /mtos/config, sa dá použíť na konfiguráciu IPM (Image-based package manager - Na obrazoch založený Správca Balíkov).

Ale teraz sa poďme pozrieť na Imager. Tu by som povedal, že stav je ideálny, ale stále je čo zlepšovať. Ako som už spomínal, tak treba ešte implementovať doňho zostavovanie aktualizačných obrazov, ktoré\

## Dokumentácia/Wikistránka: Rovnaký stav ako pri základných nástrojoch.

Pri dokumentácií som potreboval spôsob, ako túto dokumentáciu zverejniť. Rozmýšľal som nad VPS v kombinácií s Wiki.js, ale to by mi mesačne strhávalo z účtu peniaze (ale ak to chcete zmeniť, tak mi prispejte Monerom na adresu v bočnom paneli). [Ale nakoniec som išiel s mdBookom, ktorý sa používa aj na online verziu knihy o Ruste.](https://github.com/rust-lang/mdbook) Je to jednoduchý nástroj. Najskôr spravíte obsah, ktorý sa vždy zobrazuje na ľavom boku wikistránky. To vám po zadaní príkazu `mdbook build` vygeneruje potrebné súbory v priečinku src/. A vy sa potom môžete vrhnúť do písania.

Kto by sa chcel pozrieť na dokumentáciu, tak je na <http://matuushos.guymatus.tech>. Nie sú tam žiadne analytické ani reklamné cookies, ani tam od vás nechcem žiadne informácie, čiže je to bezpečné. Plus ešte sa GitLabu nechce vybaviť HTTPS certifikát z nejakého nepochopiteľného dôvodu. Ale mimo absencie HTTPS vás musím varovať: Táto wikistránka je vo veľmi ranom štádiu. Iba štyri stránky sú napísane v akceptovateľnom stave\

## CDN: Nejaké zadarmo neexistuje?

Bohužiaľ, tento projekt nedisponuje žiadnym oficiálnym CDN, cez ktorý by sa dali sťahovať tieto obrazy, čiže dokým niekto nesprevádzkuje nejaké zrkadlo alebo CDN, tak si tie obrazy budete musieť zostaviť sami na štýl Gentoo. Ale teraz asi máte v hlave otázku: Nedalo by sa to zrkadlo urobiť cez GitLab? Teoreticky aj technicky áno, len GitLab si po presiahnutí určitého limitu veľkosti Git repozitára účtuje poplatok za extra miesto (toto nie je GitHub, kde máte neobmedzené úložisko na Git repozitár). Plus sa to naozaj nevyplatí.

## Záver: Prispejte kódom, vyplatí sa to

Jediný spôsob, aby sa táto distribúcia stala serióznou, [je do nej prispieť, hlavne programovaním a v neskorších fázach aj dopĺňaním dokumentácie](https://gitlab.com/MatuushOS). Len tak sa stav tejto distribúcie zlepší. Áno, viem, že niektorí ste veľmi skeptickí sem prispieť, ale prosím, urobte to. Jediné, čo potrebujete, je poznať základy Rustu (alebo gramatiku), a GitLab účet. To je všetko.

Tento blog je úplne bez reklám, a jedine analytické cookies sú aktivované. Čiže zvážte podporu Monerom na adresu v bočnom paneli.
