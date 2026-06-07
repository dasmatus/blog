---
title: "Re-recenzia NixOS: Ako sa používa?"
date: "2025-05-21"
author: "Matt"
keywords:
  - linux
  - nixos
  - re-review
---

Asi pred rokom som napísal [kontroverzný](https://discourse.nixos.org/t/the-issues-with-the-nixos-and-some-thoughts-on-them/44507/6) [článok](https://typekmatus.blogspot.com/2024/04/koniec-nixos-kontroverzie-co-dalej.html) na kontroverziu v NixOS. Áno, viem, je to paradox. Potom som prešiel na Fedoru od napísania tohoto článku, pričom ju stále používam na mojom Macu, lebo tam mám dôležité veci. Ale teraz po roku som sa rozhodol, že NixOS vyskúšam znova, tentokrát ale ako používateľ, ktorý nesleduje dianie okolo NixOS (na fórum tejto distribúcie som sa prihlásil iba teraz, aby som mohol ľahšie dohľadať príspevok a skopírovať odkaz naň). Poďme sa pozrieť, ako som si ho nastavil.

> ::: {}
> Poznámka autora: Aktuálnu konfiguráciu nájdete na <https://gitlab.com/TenTypekMatus/nixos>. 
> :::

## Čo to je?

NixOS je linuxová distribúcia, ktorá je nemenná, a ktorá sa konfiguruje pomocou jazyka, ktorý sa volá Nix, ale k nemu sa ešte dostaneme. Je to metadistribúcia, ktorú si môžete nakonfigurať tak, ako vy chcete.

## Inštalácia

> ::: {}
> Poznámka autora: Kroky inštalácie sú v inštalátore NixOS iné než tie, ktoré budem popisovať. Ja ich tu opisujem podľa toho, ako som si na ne spomenul.
> :::

NixOS som si stiahol z ich [oficiálnej stránky](https://nixos.org). Potom som použil GNOME disky na napálenie ISO obrazu distribúcie. Reštartoval som počítač do NixOS, pričom som sa pripojil na Wi-Fi a otvoril som Calamares, čo je inštalátor, ktorý NixOS používa, Cez neho som rozporcoval disky, pričom ten väčší som dal pre domovský priečinok a ten menší som použil pre distribúciu; povolil som neslobodný softvér, vybral som si GNOME ako prostredie, nastavil som jazyk, časové pásmo a vytvoril som použivateľa. Potom som začal inštaláciu NixOS. Počkal som pár minút, a bolo to hotové.

## Poinštalačné kroky

Po nainštalovaní som si musel vyhľadať na internete názov knižnice pre NixOS (modul v terminológií Nixu a NixOS), ktorá sa volá [Home Manager](https://home-manager.dev). Pomocou tejto knižnice sa dá nadeklarovať všetko od deklarácie balíkov, ktoré chcem mať nainštalované, až po konfiguráciu vzhľadu pre používateľa. Importoval som tento modul do mojej konfigurácie a okamžite som si cez to začal deklarovať balíky, ktoré chcem mať nainštalované. Nešiel som okamžite do tzv. vločiek (Flakes), lebo sú nestabilné, a existujú lepšie alternatívy ku vločkám, ako napríklad [Colmena](https://colmena.cli.rs), čo je nástroj, ktorý umožňuje rýchle a efektívne nasadenie nových generácií (obraz koreňového súborového systému NixOS) aj lokálne, aj na iné stroje cez sieť. Neskôr som im prepadol, lebo aj napriek tomu, že nie sú stabilizované, sú rozšírené v celom NixOS ekosystéme. A zároveň je okolo nich obrovský humbuk.

Potom som si nastavil Steam na hranie hier, zapol som si AppArmor, nastavil som si Secure Boot cez [Lanzaboote](https://github.com/nix-community/lanzaboote), nakonfiguroval som si správcov okien i3 a Hyprland, Neovim, VSCodium, atď..

Všetku konfiguráciu nájdete v repozitári spomenutom hore.

### Vytváranie ISO obrazov

V mojom repozitári, ktorý je spomenutý na začiatku článku v poznámke, je taký malý skript, cez ktorý vytváram ISO obrazy NixOS s mojou konfiguráciou. V budúcnosti plánujem tento proces automatizovať cez GitLab CI.

### [Stylix](https://stylix.danth.me) 

Stylix je modul NixOS, ktorý zajisťuje konzistentný vzhľad naprieč aplikáciami. Ja používam farebnú tému Tokyonight, ktorá šetrí oči aj batériu na notebooku. Ja mám v mojej konfigurácií mám niekoľko ,,vynútení\" (overrides), ktoré vynucujú farbu ikon, font do terminálu a tému kurzora, ktorá sa volá [Phinger](https://github.com/phisch/phinger-cursors), a ktorú používam, z dôvodu, keď sa kurzor vznáša napr. nad tlačidlom, tak sa zmeni na prostredník namiesto ukazováka.

### Nix (jazyk)

Nix je konfiguračný jazyk, ktorý je špecifický pre NixOS. Je veľmi podobný JSONu a Pascalu. Bohužiaľ to nie je všeobecný programovací jazyk, lebo nemá for-slučky, slučky ani funkcie v tradičnom poňatí slova. Napísal som, že je podobný Pascalu v tom zmysle, že premenné sa deklarujú v obidvoch jazykoch podobne. V prípade Nixu sa premenné deklarujú v `let in` bloku a v prípade Pascalu sa deklarujú vo `var bloku.`

## Ako vyzerá moja konfigurácia?

Ako moju aktuálnu konfiguráciu používam správcu okien i3 s Polybarom a s pozadím, ktoré sa nachádza v jednom z priečinkov v priečinku `extern` v repozitári s konfiguráciou.

:::::::::: {}

![](/static/images/re-recenzia-nixos-ako-sa-pouziva-1.jpg){original-height="1080" original-width="1920"}

![](/static/images/re-recenzia-nixos-ako-sa-pouziva-2.jpg){original-height="1080" original-width="1920"}

## Záver

NixOS je distribúcia, ktorá je svojim spôsobom jedinečná v tom zmysle, že všetko sa konfiguruje jedným súborom. A preto ju budem používať ďalej. Ale asi sa budete pýtať: Matúš, čo sa stalo s MatuushOS a prečo ho nepoužívaš namiesto NixOS? MatuushOS funguje na rovnakom princípe ako [HarmonyOS](https://en.wikipedia.org/wiki/HarmonyOS); je to sada nástrojov, na ktorých môže každý stavať. Preto sa správca balíkov volá iba pm namiesto mtpm. Okrem toho MatuushOS je ,,distribúcia\", ktorej cieľom je učiť ostatných, ako fungujú operačné systémy.

Ak sa vám tento článok páčil, tak ho neváhajte zdieľať svojej rodine, priateľom, jednoducho každému, kto sa v tomto vyzná. 

::::::::::
