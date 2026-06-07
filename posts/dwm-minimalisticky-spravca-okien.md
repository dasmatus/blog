---
title: "DWM: minimalistický správca okien"
date: "2023-05-26"
author: "Matt"
keywords:
  - advanced
  - archlinux
  - dwm
  - linux
  - ricing
---

Každý má rád nejakého správcu okien. Či už to je i3, Hyprland, River alebo aj qtile. Dnes sa poyrieme na môjho obľúbeného spravcu okien DWM

### Inštalácia a konfigurácia

Na rozdiel od iných správcov okien sa tento okenný správca nedá stiahnúť cez správcu balíkov, čiže si ho musíme skompilovať. A to urobíme tak, že si [z tejto stránky](https://dwm.suckless.org) stiahneme zdrojový kód tohto správcu okien. A to urobíme cez následujúci príkaz: ` git clone https://git.suckless.org/dwm `.  Keď sa nám zdrojový kód stiahol, tak musíte vo svojej hlave oprášiť vedomosti o ,,céčku\". Otvorte si súbor **config.def.h** cez svoj obľúbený textový editor a upravte si ho podľa svojich predstáv. Treba si ale všimnúť zopár vecí:

- farby a veľkosť okrajov sú hneď na začiatku
- všetko sa konfiguruje cez ,,céčko\"
- klávesové skratky sú vo formáte MODKEY (Alt je predvolený) a XK_klávesa na klávesnici
- všetko je komentované.
- treba poznať XCB.

Keď to všetko máte nakonfigurované, tak zatvorte editor (v mojom prípade Vim) a napíšte `make` a potom `sudo make install`. DWM sa nainštalovalo.

### Spúšťanie

DWM sa nespúšťa cez prihlasovaciu obrazovku, ale cez konzolu. Takže stlačte Ctrl+Alt+funkčný kláves, na ktorom nebeží prihlasovacia obrazovka. Napíšte svoje prihlasovacie meno a heslo. Teraz napíšte `startx /usr/bin/dwm` a stlačte Enter. A voilá, máte DWM. Síce tam chýba kompozitor, ale to prostredie sa dá používať. A ako spúšťať kompozitor pri štarte? To si povieme v ďaľšej sekcií.

### Ako automaticky spúšťať programy pri štarte?

Takže, sme si povedali, ako spustiť DWM. Ale ako ho spustiť pri štarte spolu s ostatnými programami?

Musíme vytvoriť súbor .xinitrc v domovskom priečinku. Tu Vám dám príkladný `.xinitrc` súbor, ktorý si skopírujete a prispúsobite si ho podľa seba.

A ako si to spustiť automaticky pri prihlasovaní do PC? Toto si skopírujte do Vášho `.bashrc`:

a pod týmto do `.config/fish/config.fish` (ak používate fish):

A voilá, DWM sa spustí, ak sa prihlásite.  

### Ako vyzerá moja konfigurácia DWM?

![](/static/images/dwm-minimalisticky-spravca-okien-1.png){original-height="1080" original-width="1920"}

\

### Záver

DWM je veľmi prispôsobiteľný správca okien, na ktorý ale potrebujete poznať C. Je veľmi ,,basic\" a potrbujete tam prispôsobiť veľa vecí. Môj osobný názor: určite ho vyskúšajte, podľa mňa si ho zamilujete.
