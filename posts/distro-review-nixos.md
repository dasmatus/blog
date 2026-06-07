---
title: "Distro review: NixOS"
date: "2023-07-08"
author: "Matt"
keywords:
  - distro review
  - linux
  - nixos
  - review
---

Existujú rôzne linuxové distribúcie. Niektoré sa ľahko menia (čo je za mňa zlá vec), niektoré sa nemenia, niektoré sú určené pre servery atď atď. Ale existuje pre mňa jedna ideálna linuxová distribúcia, ktorá sa volá NixOS. Tak sa poďme na ňu pozrieť.

## Inštalácia

NixOS sa inštaluje pomerne jednoducho. Stiahnete si ISO NixOS, dáte ho na kľúč, reštartujete počítač, vyberiete USB kľúč zo zoznamu diskov a et voilá, nabootovali ste do NixOS. Tento OS sa dá inštalovať dvoma spôsobmi:

::::: {}
- jednoducho
- zložito

Ja osobne odporúčam tú jednoduchšiu cestu, lebo je prístupnejšia pre masy. Pokročilú inštaláciu si možno prejdeme v ďaľšom článku. Najskôr sa pripojíme k internetu a spustíme inštalátor, ktorý sa volá Calamares. Zvolíme si jazyk, časové pásmo atď. Potom musíme naformátovať disky (dá sa aj dualbootovať), zaškrtnúť políčko, aby sme súhlasili, že chceme používať neslobodný softvér, ako napríklad Steam. Nakoniec si zvolíme prostredie, pričom sú dostupné tieto prostredia:

- GNOME
- KDE
- Xfce
- Cinnamon
- MATE
- Budgie
- Enlightement
- LXQt

NixOS sa dá používať aj bez grafického používateľského rozhrania. Keď ste si zvolili prostredie alebo ste si vybrali možnosť ,,Bez prostredia\", tak skontrolujte výber a stlačte tlačidlo ,,Inštalovať\". Počkajte pár minút a reštarujte počítač.

:::::

## Konfigurácia

NixOS sa konfiguruje cez jeden konfiguračný súbor, ktorý sa nachádza na `/etc/nixos`. Odporúčam sa pozrieť na [oficiálnu dokumentáciu](https://nix.dev/) aj na [neoficiálnu dokumentáciu](http://nixos.wiki), aby ste sa dozvedeli viac o tomto OS a ako ho nakonfigurovať. Je toho veľa, čo sa dá spraviť v NixOS, ako napríklad [vločky](https://nixos.wiki/wiki/Flakes) a [správca domovského priečinka](https://github.com/nix-community/home-manager). Ale to niekedy nabudúce.

## Ako vyzerá môj setup?

![](/static/images/distro-review-nixos-1.png){original-height="1080" original-width="1920"}\

## Záver

NixOS je najlepšia distribúcia, ktorá je vhodná aj pre technicky nezdatných, ak im počítač spravujete vy, systémoví administrátori, ktorí práve čítate tento článok a ktorí ste ,,ítečkári\" pre svojich príbuzných.

Nedá sa pokaziť, je nemenná, čo je pre mňa veľké plus, keďže sa postupne zbavujem zlozvyku, ktorý sa volá ,,distrohopping\" a toto mi umožňuje robiť školu, keďže som bol práve prijatý na strednú školu. Zároveň je aj reprodukovateľná, čo mi umožňuje preniesť jednu konfiguráciu z jedného počítača na druhý a to je pre mňa to najlepšie. Jednoducho, NixOS je výborná distribúcia, ktorá stojí za to a ktorú budem určite používať.
