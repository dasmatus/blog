---
title: "Ako si vytvoriť vlastný GitHub v šiestich krokoch"
date: "2023-07-18"
author: "Matt"
keywords:
  - guide
  - linux
  - selfhosted
---

Každý, kto programuje a chce si uložiť svoj zdrojový kód niekam, asi pozná túto stránku. Ponúka veľa funkcií. Ja ich Vám tu nebudem vymenovávať, lebo to nie je téma článku. Téma článku je, ako si nastaviť Git hosting na VPS spolu s wikistránkou, akciami/CI a CD, s reverzným proxy a s pekne vyzerajúcim dashboardom, aby sme mohli dať na všetky tieto služby certifikát od Let\'s Encrypt, aby naša stránka vyzerala dôveryhodne. Takže, dajme sa do práce.

## Predpoklady

Tento článok predpokladá, že máte nejaký server, či už to je virtuálny server, alebo je v Homelabe. Taktiež predpokladá, že máte zakúpenú doménu u niektorého z veľa registrátorov domén. Ja svoju mám vo Websupporte. Ešte predpokladám, že ste niekedy používali SSH a že sa prihlasujete pomocou SSH kľúčov do servera. A ešte posledný predpoklad: musíte mať nainštalovaný [Ansible](https://ansible.com). Takže, už prestanem kecať, a poďme sa na to vrhnúť.

## Inštalácia

### 1. Naklonovanie si [tohoto repozitára](https://git.guymatus.tech/Wiki/dev-stack-ansible) pre zrýchlenie inštalácie

Odporúčam si naklonovať repozitár spomenutý hore, aby Vám uľahčil život s inštaláciou, a aby Vám nastavil potrebné veci, ako napríklad Docker a automatické aktualizácie systému. Zároveň je tam aj reverzné proxy, ktoré je potrebné na to, aby sme mohli dať certifikát od Let\'s Encrypt. A zároveň je tam všetko, čo som spomenul hore. Keď ste si ten repozitár naklonovali, tak sa do neho prepnite a otvorte súbor `hosts.ini`. V ňom odkomenujte hocijaký riadok pod sekciou `[machines]` a zmeňte IP adresu na servery Cloudflare na IP adresu Vášho servera. Keď ste to urobili, tak si ten súbor uložte a napíšte tento príkaz: `ansible-galaxy install -r requirements.yml; ansible-playbook -i hosts.ini site.yml --ask-become-pass`. Napíšte tam vaše administrátorské heslo a stlačte Enter. Počkajte pár minút. Keď to máte, tak sa môžeme posunúť na ďaľši krok.

### 2. Nastavenie reverzného proxy

[Reverzné proxy](https://en.wikipedia.org/wiki/Reverse_proxy) je proxy, ktoré ale ide naopak, čiže z internetu do internej siete. Existuje veľa reverzných proxy, ale my dnes budeme používať Nginx, ktorý už máte nainštalovaný, ak ste si nastavovali potrebné veci cez môj Ansible skript. Takže si otvorte IP adresu servera na porte 81 vo Vašom prehliadači. Zobrazí sa prihlasovacie okno podobné tomuto:\

![](/static/images/ako-si-vytvorit-vlastny-github-v-1.png){original-height="576" original-width="865"}

\

Úvodné prihlasovacie údaje sú admin@example.com a heslo je changeme. Keď sa prihlásite, tak Vás stránka vyzve, aby ste tieto údaje zmenili. Keď ste to urobili, tak kliknite na tlačidlo ,,SSL certificates\" a potom kliknite na ,,Add SSL certificate\". Zobrazí sa Vám okno, kde zadáte doménu a subdoménu v tvare \*.example.com a povolíte možnosť ,,Use a DNS Challenge\" kde si potom zo zoznamu vyberete registrátora domény, čiže v mojom prípade Websupport a vyplníte tam API kľúč a príspupové ID. Potom musíte súhlasiť s podmienkami služby Let\'s Encrypt a kliknite na tlačidlo ,,Save\". Ak sa Vám to spravilo úspešne, tak sa môžeme vrhnúť na pridávanie subdomén. Kliknite na tlačidlo ,,Hosts\" a potom kliknite na tlačidlo ,,Proxy Hosts\". Teraz kliknite na tlačidlo ,,Add Proxy Host\". Zobrazí sa Vám okno, ktoré vidíte dole.

:::: {}

![](/static/images/ako-si-vytvorit-vlastny-github-v-2.png){original-height="550" original-width="495"}

::::

Do poľa ,,Domain names\" zadáme doménu a subdoménu v tvare \*.example.com. Asi už nemusím vysvetľovať, čo sú tie ostatné políčka. Jednoducho tam do poľa ,,Forward IP\" zadáte 127.0.0.1 a do poľa Forward Port zadáte 81. Potom kliknete na záložku SSL a tam vyberete certifikát, ktorý ste vygenerovali, keď ste tam dali doménu. A to je všetko! Teraz tento postup opakujte pri každej [Docker službe](https://git.guymatus.tech/Wiki/dev-stack-ansible/src/branch/master/svc/devstack.yml), ktorá je v tomto súbore, len tam namiesto 127.0.0.1 zadáte internú IP adresu servera a port každej služby. A ešte som zabudol, že pri každej službe musíte zadať inú subdoménu a bez domény na prvom mieste. Keď to máte nastavené, tak sa môžeme nastaviť Giteu. 

> ::: {}
> Pre viac informácií choďte na <https://nginxproxymanager.com/>.
> :::

### 3. Nastavenie Git hostingu

Teraz, keď máte nastavené reverzné proxy, tak sa môžeme vrhnúť na nastavenie Git hostingu, čo bude Gitea. Takže, otvorte si ju na subdoméne, ktorú ste si nastavili v správcovi reverzného proxy. Otvorí sa Vám nastavovacia obrazovka. Všetko ponechajte tak, ako to je, ale nastavte si administrátorský účet a kliknite na tlačidlo ,,Install Gitea\". Počkajte pár sekúnd a tadá, máte Git hosting. Teraz si prekopírujte konfiguračný súbor v priečinku examples na server do priečinka, kde sú pre ňu konfiguračné súbory. Teraz reštartujte Giteu. Voilá, máte ju nakonfigurovanú. Teraz ešte tam musíme dať tzv. Runner, čo je vlastne kontajner, v ktorom budú bežať CI/CD úlohy. Takže pôjdeme do nastavení servera a klikneme na tlačidlo ,,Actions\", a potom klikneme na tlačidlo ,,Runners\". Zobrazí sa tabuľka podobná tejto:

![](/static/images/ako-si-vytvorit-vlastny-github-v-3.png){original-height="617" original-width="829"}

Teraz stlačte tlačidlo ,,Create new Runner\" a okopírujte si registračný token. Potom sa prihláste do servera cez SSH a napíšte tam tento príkaz: `docker run -e GITEA_INSTANCE_URL=https://your_gitea.com -e GITEA_RUNNER_REGISTRATION_TOKEN=token -v /var/run/docker.sock:/var/run/docker.sock --name runner gitea/act_runner:nightly`, kde musíte premennú GITEA_INSTANCE_URL musíte nahradiť adresou Vášho servera a doplniť tam token. Počkajte pár sekúnd a máte nastaveného runnera. A voilá, máte nastavený Git hosting.

> ::: {}
> Pre viac informácií a konfiguračných možností choďte na <https://docs.gitea.com>
> :::

### 4. Nastavenie záloh

 Takže, teraz sú na rade zálohy. Všeobecné pravidlo je také, že treba za každých okolností zálohovať bez ohľadu na situáciu. Teraz ale prestaňme rozprávať a otvorme si subdoménu, na ktorej je Duplicati, náš zálohovací klient. Ako prvé by ste si mali do neho nastavvť heslo z bezpečnostných dôvodov. Takže, choďte do nastavení a tam si zadajte vaše nové heslo a potom stlačte tlačidlo ,,Save\". A teraz sa poďme vrhnúť na zálohy. Takže ako prvé stlačte tlačidlo ,,New backup\". Tu to už nebudem komentovať, lebo Vás Duplicati prevedie sám, ako si nastaviť zálohy.

> Pre viac informácií choďte na <https://duplicati.readthedocs.io/en/latest/>

### 5. Nastavenie ,,dashoardu\"

Teraz, keď už máte nastavené zálohy, tak sa už môžeme vrhnúť na nastavenie poslednej veci, čo je dashboard alebo voľne preložené do slovenčiny, nástenka. Čiže, choďte na subdoménu, na ktorej máte túto nástenku nastavenú a choďte do nastavení. Potom klinite na tlačidlo ,,App\" a prihláste sa heslom, ktoré ste si nastavili v Docker Compose súbore. A teraz sa vráťte naspať, kde klikneme na položku ,,Applications\". Keď sme tam, tak tam klineme na tlačidlo ,,Add\", kde vyplníme všetky údaje. A toto musíte urobiť niekoľkokrát. A tadá, máte nastavený dashboard.

> Pre viac informácií choďte na <https://github.com/pawelmalak/flame/wiki/>

### 6. Nastavenie Wiki

Už konečne sa môžeme vrhnúť na nastavovanie našej Wiki, ktorou bude [Wiki.js](http://js.wiki). Otvorte si cez náš dashboard Wiki, ktorá Vás privíta registráciou. Keď ňou prejdete, tak si vytvorte domovskú stránku a potom prejdite do nastavení. Ešte rýchlo naspäť k tej domovskej stránke: tu máte príklad ako by mala vyzerať:

![](/static/images/ako-si-vytvorit-vlastny-github-v-4.png){original-height="819" original-width="854"}

A voilá, máte nastavenú Wikistránku

> ::: {}
> Pre viac informácií choďte na [https://docs.requarks.io](https://docs.requarks.io/).
> :::

## Záver

Konečne sme na konci! Tento článok mi trval tri dni, kým som ho dokončil, pričom zvyčajne mi články trvajú urobiť dva dni. Ale verím, že som Vám pomohol alebo ste sa naučili niečo nové. Napíšte mi do komentárov, či chcete podobný návod aj na mediálny ,,stack\".
