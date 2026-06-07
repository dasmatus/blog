---
title: "Nextcloud: Cloudové úložisko, ktoré je vo vašej režií"
date: "2024-08-16"
author: "Matt"
keywords:
  - docker
  - linux
  - nextcloud
  - selfhosted
---

Každý pozná cloud v nejakej forme. Či už je to Google Disk, iCloud, OneDrive alebo aj Proton Drive. Ale tieto všetky služby majú niečo spoločné: Vaše dáta **nevlastníte vy.** Vlastnia ich spoločnosti, ktoré tieto cloudové úložiská spravujú. Vy tie dáta tam máte len uložené a nemôžete sa k ním dostať. A práve tu prichádza Nextcloud, cloud z Nemecka, ktorý si **spravujete vy a kde vlastníte vaše dáta.**

> **Poznámka: Tento článok predpokladá, že už máte nainštalovaný a nastavený Docker. Ak ho nemáte nainštalovaný, [tak sa pozrite na tento článok, ako si ho nainštalovať.](https://typekmatus.blogspot.com/2024/01/co-je-docker-swarm-ako-ho-nastavit.html)**

## **Inštalácia**

### **Docker kontajner**

:::: {}
Nextcloud sa dá nainštalovať tromi metódami: cez Snap, Docker alebo manuálne. Ja som ho nainštaloval cez Docker Compose, čo sa robí deklarovaním súboru docker-compose.yml. Čiže si ho otvorte cez váš obľubený textový editor a prepíšte tam tento kód z obrázka.

![](/static/images/nextcloud-cloudove-ulozisko-ktore-je-vo-1.png){original-height="722" original-width="1032"}

\
::::

Nezabudnite na začiatok súboru dať tri čiarky (`---`), aby ste naznačili, že ide o začiatok Docker Compose súboru, verziu špecifikácie Docker súboru a hlavný blok, ktorý sa volá `services` v Docker Compose. Zároveň nezabudnite zmeniť priečinok, v ktorom budú vaše dáta a konfigurácia Nextcloudu.

### Tailscale (nepovinné, ak budete Nextcloud používať na lokálnej sieti)

Túto časť tu dávam len preto, aby vedeli, ako sa dostať k vaším dátam, aj keď nie ste doma. Tailscale je tzv. Mesh VPN, čo je VPN, ktorá sa skladá z viacerých zariadení, ktoré potom tvoria sieť, ktorá sa v Tailscale volá Tailnet. Môžete jedno zariadenie nastaviť na tzv. exit node, čiže zariadenie, cez ktoré budú prichádzať a odchádzať dáta z internetu. Toto príde vhod, keď budete chcieť nastaviť, povedané mierne, sťahovanie obrazov linuxových OS cez BitTorrent. Ale zároveň sa dá využiť aj na obojsmernú komunikáciu medzi koncovým zariadením a serverom, na ktorom beží Nextcloud.

Tak sa poďme pozrieť, ako nastaviť túto VPN. V prvom rade si stiahnite ich [aplikáciu a server](https://tailscale.com/download) na server a na zariadenia, na ktorých budete používať Nextcloud. Na serveri zadajte `sudo tailscale up --operator=$(whoami)` a prihláste sa cez odkaz, ktorý vám vygeneruje CLI. A na iných zariadeniach postupujte podľa toho, čo vám Tailscale na vašej obrazovke ,,bude hovoriť.\" Keď budete mať nastavený Tailscale, tak môžeme prejsť na ďaľšiu kapitolu tohoto článku.

### Ako sa dostať na Nextcloud?

Keď máme spustený Nextcloud, tak musíme aj vedieť, ako sa doň dostať.

Otvorte si webový prehliadač a choďte na IP adresu servera a na jeden z portov, ktorý je na **ľavej** strane. Zobrazí sa vám okno, kde jednoducho stlačíte ,,Install\", a nainštalujete si odporúčané aplikácie.

A et voilá, máte svoj vlastný cloud.

### 

## Ako vyzerá môj cloud?

![](/static/images/nextcloud-cloudove-ulozisko-ktore-je-vo-2.png){original-height="1041" original-width="1918"}

Môj cloud je na obrázku nad týmto textom. Toto je konkrétne hlavná obrazovka (dashboard), na ktorej je počasie, karty, čo mám urobiť, kalendár a GIF pozadie s Nyan Cat.

\

## Záver

Nextcloud je najlepším cloudom, akž existuje. Nastavil som ho potom, ako som zabudol obnovovací kľúč na Proton Drive po tom, ako som si vyresetoval heslo na Protone. Ďaľší článok bude o mojom homelabe.

\

Ak sa vám tento blogový príspevok páčil, tak ho nezabudnite zdieľať na Mastodon, Lemmy, LinkedIn alebo na iné sociálne siete.
