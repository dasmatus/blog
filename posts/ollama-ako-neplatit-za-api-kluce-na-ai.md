---
title: "Ollama: Ako neplatiť za API kľúče na AI"
date: "2025-08-08"
author: "Matt"
keywords:
  - ai
  - foss
  - linux
  - ollama
---

Asi každý pozná umelú inteligenciu. Hovorí sa o nej všade. V televíznych novinách, na LinkedIne (aspoň v mojom feede), YouTuberi o nej rozprávajú, jednoducho každý o nej rozpráva. Ale verzia umelej inteligencie, o ktorej všetci rozprávajú, je proprietárna verzia, ktorá sa učí z toho, čo jej napíšeš, poprípade môže byť cenzúrovaná z princípu (skúste sa spýtať DeepSeeku na ich webe, čo sa udialo na Námestí nebeského pokoja v roku 1989). Dnes sa ideme pozrieť na platformu, ktorá sa volá Ollama, ktorú si môžete nastaviť doma/vo firme a kde vaše súkromné dáta neopustia váš domov/firmu.

## Čo je to umelá inteligencia?

Umelá inteligencia je len algoritmus, ktorý sa kŕmi rôznymi zdrojmi na to, aby vrátil ďaľšie informácie. Tieto zdroje môžu byť rôzne. Filmy, seriály, e-knihy, webové stránky, poprípade fanfikcie alebo aj stránky obsahujúce hentai. Filtrované AI dáva iba zdroje, ktoré nevyzerajú podozrivo, poprípade sa za nemôže ísť do väzenia. Zato nefiltrované AI ti dá aj tie informácie, ktoré sú v 99% prípadoch nelegálne. Napríklad keby vám necenzúrovaná online verzia DeepSeeku vrátila polohu koncentračných táborov v Xinjiangu a zároveň by ste boli na hoteli niekde v Pekingu, tak by vás v lepšom prípade vyhodili z krajiny a v tom horšom by vás zastrelili na strelnici. Preto OpenAI/Google/DeepSeek/(domyslite si providera AI) používajú iba filtrované verzie umelej inteligencie, aby konatelia tých spoločností neskončili v base.

##  Inštalácia

Na inštaláciu potrebujete jedine internet a nepovinne aj frontend, cez ktorý budete s modelom bežiacim na Ollame interagovať. Nepovinne preto, lebo Ollama má vstavané textové pole, cez ktorý môžete tej umelej inteligencií dávať príkazy.

Najskôr pôjdete na [https://ollama.com](https://ollama.com%C2%A0), kde kliknete na Download. Tam si stiahnete inštalačný súbor/DMG súbor (pre mojich čitateľov jabĺčkarov). V pripade linuxovej distribúcie si stači prekopírovať príkaz, ktorý sa vám objaví, vlepiť ho do terminálu a spustiť ho. Keď to máte, tak si môžete **nepovinne** nainštalovať frontend. Začnem linuxovými distribúciami, keďže používam Fedoru. Osobne odporúčam [Alpacu](https://flathub.org/apps/com.jeffser.Alpaca), ale existuje aj [Newelle](https://flathub.org/apps/io.github.qwersyk.Newelle), ktorý má viacej funkcií, ale zas viacej zamŕza. Pre mojich jabĺčkárov odporúčam oficiálnu aplikáciu [Ollamy](https://ollama.com/blog/new-app). Existuje aj [Ollamac](https://github.com/kevinhermawan/Ollamac), ale osobne som ho neskúšal, takže mi môžete napísať do komentárov, akú skúsenosť s tým máte. Na Windows odporúčam ich oficiálnu aplikáciu. A nakoniec, keby ste chceli webové rozhranie do firmy alebo na homelab, tak odporúčam [OpenWebUI](https://openwebui.com/), ktoré vyzerá ako prostredie ChatGPT.

Teraz, keď máte nainštalovanú Ollamu (alebo aj frontend na ňu, ktorý je nastavený), tak si ideme nainštalovať nejaké modely. V tomto článku budem pokrývať Alpacu, čiže vysoko odporúčam si prečítať dokumentáciu danej aplikácie, ktorú máte nainštalovanú.

Otvorte nový čet s modelom a kliknite na ikonku mozgu. Tam kliknite na tab s ikonkou glóbusu a vyberte si nejaký model. Kliknite naňho, vyberte si veľkosť a počkajte, kým sa stiahne. Potom sa vráťte naspäť na čet a vyskúšajte nejaký z vygenrovaných príkazov. Ak vám to začne vracať informácie, tak to máte dobre nastavené.

## Porovnanie

Tu budem používať verzie online, cenzúrovanej a necenzurovanej verzie DeepSeeku a zároveň aj budem ukazovať obrázky toho, čo to vrátilo. Ako príkaz použijem otázku ,,What happened on Tianamen square in 1989?˝. Jednoducho, presvedčte sa sami.

:::::::: {}
:::: {}
![](/static/images/ollama-ako-neplatit-za-api-kluce-na-ai-1.jpg){original-height="1107" original-width="1865"}

![](/static/images/ollama-ako-neplatit-za-api-kluce-na-ai-2.jpg){original-height="422" original-width="1573"}
::::

![](/static/images/ollama-ako-neplatit-za-api-kluce-na-ai-3.jpg){original-height="422" original-width="1573"}

   Zato necenzúrovaná verzia toho istého modelú vrátila odpoveď, ktorá sa zhoduje s pravdou

## Záver
::::::::

Ollama je jednoducho skvelá platforma na to, aby ste mohli mať kontrolu nad vašími dátami, a zároveň mať všetky výhody umelej inteligencie, ktorú ponúkajú poskytovatelia AI služieb. Jediné, čo budete musieť kúpiť, je dostatočne silná grafická karta alebo procesor s NPU, ktoré je dostatočne silné.

Ak sa vám tento článok páčil, tak ho nezabudnite zdieľať ďaľším ,,AI bros˝ poprípade tým, čo si platia predplatné umelej inteligencie, ktoré stojí viacej, ako všetky streamovacie služby. Samozrejme, nezabudnite dať palec hore/zatlieskanie/srdiečko na LinkedIne, poprípade to repostnúť na vašom profile, hviezdu a repost na Mastodone a upvote a crosspost na Lemmy.
