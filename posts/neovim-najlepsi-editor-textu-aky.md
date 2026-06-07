---
title: "Neovim - najlepší editor textu, aký existuje"
date: "2024-04-24"
author: "Matt"
keywords:
  - linux
  - nixos
  - nvim
---

Každý kto programuje (ale aj neprogramuje) pozná nejaký textový editor. tie neprogramátorské, ako LibreOffice Writer, Word alebo aj T602, pozná úplne každý. Ale tie programátorské, ako VSCodium, Vim, Neovim, o ktorom si dnes budeme písať alebo Emacs, čo je najhorší textový editor, mimo programátorov pozná málokto.

## Inštalácia 

Keďže Neovim je veľmi populárny, tak ho nájdete úplne všade. Dokonca je aj na Flathube, čo je repozitár open source aj propritárnych aplikácií. Je dostupný aj na Windowse, ale aj na MacOS. Na Windowse by som ho naozaj neodporúčal používať, keďže na Windows sa viac hodí Visual Studio. Ale na MacOS sa naozaj hodí. Na NixOS sa dá tiež nainštalovať, a zároveň si ho cez Nix a Home Manager dokážete prispôsobiť. Moju konfiguráciu nájdete [tu](https://gitlab.com/TenTypekMatus/nixos-infra/-/blob/main/home-manager/modules/nvim.nix?ref_type=heads).

## Prostredie

![](/static/images/neovim-najlepsi-editor-textu-aky-1.jpg){original-height="1108" original-width="923"}\

Keďže Neovim je terminálový editor textu, tak si ho cezeň musíme otvoriť. Čiže napíšte `nvim` a ste v ňom. Keď stlačíte klávesu I, tak si tam môžete písať, čo chcete. Ak ten súbor chcete uložiť **a zároveň** zavrieť, tak napíšete `:wq` potom, ako stlačíte klávesu Escape, čím sa zároveň dostanete aj do normálneho módu. V normálnom móde sa môžete pohybovať po texte aj klávesami H, J, K a L.

## Prispôsobenie

![](/static/images/neovim-najlepsi-editor-textu-aky-2.png){original-height="1200" original-width="1920"}\
Neovim je prispôsobiteľný. Až príliš. A je to aj potreba, lebo v základe vám nenavrhuje automatické doplňovanie slov pri programovaní napr. v Ruste alebo v céčku. Zároveň predvolená téma je jednoducho odpad. Preto Neovim ponúka prispôsobenie editora v jazyku, ktorý sa volá Lua, a ktorý sa používa napríklad v Robloxe, AwesomeWM, ale aj v Neovime. Všetky Lua príkazy sú v triede `vim`.  Ale konfiguráciu môžete robiť aj vo Vim skripte, čo je konfiguračný jazyk pre Vim. 

### Pluginy

Pluginy vo Neovime sú veľmi potrebné z toho dôvodu, že predvolene je Neovim veľmi minimalistický. V konfiguračnom súbore, ktorý som vám dal do odkazu na začiatku, je moja konfigurácia Neovimu. Vysoko odporúčam si ju pozrieť, a keď tak, tak časti z nej skopírovať. Ale sa asi budete pýtať, aké pluginy odporúčam. Tu Vám dám zoznam najodporúčanejších pluginov:

- [lazy.nvim](https://github.com/folke/lazy.nvim) (správca pluginov)\
- [trouble.nvim](https://github.com/folke/trouble.nvim) (Diagnostika na štýl IntelliJ editorov)\
- [Airline](https://github.com/vim-airline/vim-airline) (Pás, ktorý používa každý, kto má život)\
- A veľa iných

## Záver

Neovim je najlepší editor, aký existuje. Najlepší je preto, lebo je najprispôsobiteľnejší, ľahko sa v ňom pohybuje (ak si zvyknete), beží na všetkom a je oveľa lepší ako všetko ostatné (používam ho na úplne všetko). Ak sa vám môj článok páčil, tak ho zdieľajte na Mastodone, LinkedIne, Reddite alebo svojim priateľom, a ešte prajem príjemný deň.
