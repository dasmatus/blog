---
title: "Programming Language Review: Rust"
date: "2024-06-27"
author: "Matt"
keywords:
  - language review
  - rust
---

Každý, kto programuje, asi v niečom programuje. A teraz nemyslím integrované vývojové prostredie/editor textu. Myslím tým programovací jazyk. Či už je to C, C++, Python, a iné. Ale dnes sa pozrieme na Rust, čím samozrejme nemyslím dediny v Burgenlande/Badensku-Wüttenbergu (mimochodom, v obidvoch dedinách je lunapark), alebo tú hru, ktorá je dosť ťažká. Myslím tým programovací jazyk, ktorý je veľmi bezpečný, spoľahlivý a jeho prekladač/zostavovač je veľmi nápomocný (niekedy).

## Výhody oproti ostatným jazykom

## ![](/static/images/pl-review-rust-1.png){original-height="1800" original-width="2880"} 

Rust je programovací jazyk, ktorý má asi najlepšie DX (developer experience) zo všetkých jazykov, ktoré existujú a v ktorých som programoval. Buďme si úprimní, koľko z nás už dvakrát uvoľnilo pamäť, alebo napísali ste niečo, čo ste si mysleli, že ste napísali niečo správne, ale prekladač namiesto toho, aby vám povedal, čo ste zle napísali, tak vám vôbec nepomôže. Rust vás ale na takéto chybičky upozorní pri zostavovaní a buď zastaví zostavovanie a vypíše vám, čo sa presne stalo, alebo vám dá varovanie pri zostavovaní, napríklad keď zabudnete odstrániť import niečoho, čo už nepotrebujete. 

Potom tu je Cargo, čo je správca balíkov pre Rust, a zároveň je to **jediný správca balíkov, ktorý sa používa v Rustovskom ekosystéme**. Zatiaľ čo C a C++ nemajú jediného správcu balíkov ([lebo ich je toľko, koľko politických strán na Slovensku](https://stackoverflow.com/questions/27866965/does-c-have-a-package-manager-like-npm-pip-gem-etc)), v Ruste sa jednoducho môžete prehodiť do priečinka, kde je súbor `Cargo.toml` (spravuje názov balíka, edíciu Rustu, verziu balíka, spravuje závislosti, optimalizáciu a iné veci), zadať `cargo build` (môžete pridat aj argument `--release`), počkať pár sekúnd a v priečinku `target/(profil, ktorý ste si vybrali pri zostavovaní)/` nájdete binárny súbor, ktorý ste si zostavili.

A takto môžem pokračovať asi donekonečna. Makrá sa takmer nedajú zneužiť, odvodzovacie (#\[derive\]) makrá sú úplná pohoda a prispievajú k snaď najlepšej vývojárskej skúsenosti, aká existuje v prostredí programovacích jazykoch (Augumentácie JavaScriptu, ako napríklad React, Astro, sú tiež v pohode, ale sú to iba augumentácie jazyka, ktorého prvá verzia bola napísaná za týždeň a kde 0 nie je číslo).

## Jeho syntax

[Rust je striktne typovaný.](https://sk.wikipedia.org/wiki/Rust_(programovac%C3%AD_jazyk)) To znamená, že všetko musí byť zadefinované predtým (a musí to mať aj dátový typ), než sa to použije vo funkcií alebo v makre. Ale zase tá syntax potom nevyzerá ako z JavaScriptu, kde sa nemusia vôbec definovať dátové typy a potom nikto nevie, aký dátový typ má táto funkcia.

Syntax Rustu sa skladá z funkcií, traitov (nástroj polymorfizmu, ktorý potom môžete implementovať na funkcie), štruktúr, enumerácií, impl syntaxe (tzv. keyword, cez ktorý sa robí OOP v Ruste).

Keďže Rust je nízkoúrovňový jazyk, tak tam cezeň môžeme spravovať pamäť. A to sa robí cez ampersand (&), čím si vlastne vypožičiame odkaz na adresu v pamäti, kde sa nachádza ten pôvodný objekt. Je tam samozrejme aj celkom známa hviezdička (\*), ktorá derefencuje (zničí) ten objekt z pamäte. Samozrejme, ako som už spomínal, tak vám to nedovolí dereferencovať dvakrát, to by už spôsobilo, že sa ten prekladač bude hnevať :).

## Záver

Rust je budúcnosť. To nemôže nikto vyvrátiť. Je používaný na vývoj blokchainu, AI, embedded systémov, v big tech korporáciach, [vo Windowse](https://x.com/TweakTown/status/1657100592618274817), [v autách](https://medium.com/@neuailabs/rust-programming-in-automotive-embedded-systems-e9e8b1bd6969), jednoducho všade. A bude stále vytláčať C a C++, pričom spoločnosť sa musí tomu prispôsobiť (ale asi nie na Slovensku, tu sme vo všetkom sto rokov za opicami)

Ak sa vám tento článok páčil, tak ho nneváhajte zdielať na Reddit, LinkedIn, Mastodon, alebo ho pošlite priamo niekomu.\
