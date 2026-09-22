---
title: "EPC QR kód: čo to je, ako to funguje a porovnanie s WeChat/Apple/Google Pay a s platobnými kartami"
date: "2026-02-11"
author: "Matt"
keywords:
  - epc qr
  - platby
  - sepa
  - fintech
---

Nedávno som v správach pozeral reportáž o tom, ako jedna bratislavská pekáreň zaviedla platby QR kódom. Som si hovoril v hlave, že WeChat Pay prišiel do naších končín. Ale naštastie neprišiel. Je to úplne iná technológia ako majú v Číne, ktorá nie je závislá na jednej superaplikácií, plus nie je spravovaná akciovou spoločnosťou, ktorá je (podľa mňa) v podstate predĺženou rukou Čínskej komunistickej strany. A nie, nie je to ani Pay by square (pre mojich zahraničných čitateľov - nie, nie je to vlastnené tou americkou spoločnosťou, ktorá vlastní Cash App, je to podľa mňa blbo pomenovaný slovenský \"vynález\", ktorým sa dá tu v podstate zaplatiť všetko, dokonca aj obedy v EduPage).

## Čo to je?

EPC QR kód je typ QR kódu, ktorý keď naskenujete vašou bankovou aplikáciou, tak sa vám automaticky vyplnia údaje v nej. Jediné, čo musí banková aplikácia podporovať, sú SEPA platby, čo podporuje v podstate každá banka so sídlom v Európskom hospodárskom pristore alebo v Británií (áno, [v Británií funguje SEPA](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area)).

V posledných rokoch tento formát získava na popularite hlavne z dôvodu, že kreditné a debetné karty sú primárne vydávané dvoma americkými spoločnosťami, a z toho dôvodu, že krajina, kde tieto spoločnosti sídila, robí [veľmi nepriateľské kroky voči svojim spojencom](https://en.wikipedia.org/wiki/Greenland_crisis). Plus (ospravedlňujem sa dopredu, ak to, čo napíšem, vyznie blbo) banky a spoločnosti chcú mať väčší zisk, keďže pri prevode SEPou nie sú žiadne poplatky. A zároveň všetky banky majú predvolene nastavený instantný režim prevodu cez ňu a nedá sa to zmeniť (aspoň nie v Revolute ani vo [Wise](https://wise.com)).

## Ako to funguje?

Keď chcete zaplatiť, tak jednoducho poviete predavačovi, že chcete zaplatiť skenom QR kódu. On tam naťuká sumu a terminál Vám vygeneruje QR kód, ktorý potom naskenujete vašou bankovou aplikáciou.

To bolo veľmi zjednodušené vysvetlenie. Poďme sa ale pozrieť na to, ako to funguje pod kapotou. V podstate, to čo aplikácia naskenuje, sú [newlinom](https://en.wikipedia.org/wiki/Newline) oddelené údaje o danom obchodníkovi (IBAN, meno účtu atď.), typ prevodu, dôvod prevodu, a informácie o tom, prečo bol ten prevod spravený.

## Porovnanie EPC QR kódov s inými metódami platby

Pripravil som si pre vás tabuľku, ktorá porovnáva EPC QR kódy s WeChat/Apple/Google Pay a s platobnými kartami.

:::: {}
  ---------------------------------- -------------------------------- --------------------------------- -------------------------------------------- --------------------------------------------------- -------------------------------- ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Platobná metóda                    Vyžadované zariadenie            Potreba NFC/Tokenizácie           Bezpečnosť                                   Rýchlosť / Pohodlnosť                               Online platby                    Prevádzkovateľ                                             Poplatky

  Kreditné/Debetné karty (Fyzické)   Fyzická karta                    Nie (len čip/magnetický prúžok)   PIN/Podpis                                   Stredná (vloženie do terminálu)                     Áno (zadanie údajov karty)       Banky spolu s kartovými spoločnosťami (Visa, Mastercard)   Mesačný poplatok 0 € - 20 € (zľava pri aktívnom používaní); Úrok 10,9 % - 24,9 % p.a. (pre kreditné karty); Poplatky pre obchodníkov (Interchange) cca 1,15 % - 3,15 % z transakcie.

  Apple Pay / Google Pay             Smartfón/Hodinky (iOS/Android)   Áno (NFC) / Tokenizácia           Záleží (Tokenizácia a biometria/PIN/Heslo)   Vysoká (pohodlné priloženie)                        Dá sa (cez API/cez prehliadač)   Apple / Google                                             Bez poplatkov pre používateľov; Obchodníci neplatia dodatočné poplatky od Apple/Google, iba štandardné poplatky za spracovanie platby kartou (Interchange/Scheme).

  Platba cez EPC QR kód              Smartfón s bankovou aplikáciou   Nie (QR kód - kamera)             PIN/Biometria v bankovej aplikácii           Stredná (skenovanie, kontrola údajov, potvrdenie)   Samozrejme                       Banky (cez mobilné bankovníctvo)                           Bez transakčných poplatkov pre obchodníkov .

  WeChat Pay                         Smartfón s aplikáciou WeChat     Nie (QR kód - kamera)             Heslo / PIN v aplikácii                      Vysoká (skenovanie)                                 Áno (v ekosystéme WeChat)        Tencent                                                    0% transakčný poplatok pre medzinárodné karty pri transakciách pod 200 CNY; 3% poplatok pre medzinárodné karty pri transakciách nad 200 CNY; Priemerný poplatok pre obchodníkov je 0,6% z transakcie.\
  ---------------------------------- -------------------------------- --------------------------------- -------------------------------------------- --------------------------------------------------- -------------------------------- ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Ako môžete vidieť, tak platba cez EPC QR kód vychádza z toho najlepšie. 

## Záver

Ako my mladí, čo podľa niektorých ľudí nedokážeme obsedieť, hovoríme: EPC QR kódy sú based asf. 

::::
