-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 03:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--
CREATE DATABASE IF NOT EXISTS `portal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portal`;


-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `category_id`, `image`, `created_at`) VALUES
(2, 'Toyota Hilux kao dio projekta Hydrogen Fuel Cell Hilux!', 'Revolucionarni projekt za realizaciju Hilux pick-upa s vodikovim gorivnim člancima prešao je u svoju sljedeću i posljednju fazu, signalizirajući još jednu prekretnicu u Toyotinom napretku prema budućnosti bez ugljika.\r\n\r\nOd predstavljanja prvog prototipa vozila u rujnu 2023., Toyota i njeni partneri u konzorciju, uz potporu vlade Ujedinjenog Kraljevstva, došli su do faze intenzivne evaluacije i demonstracije.\r\n\r\nPosljednji biljeg u ovom zajedničkom razvojnom projektu dodatno pokazuje širok opseg Toyotine višestruke strategije prema ugljičnoj neutralnosti, primjenom različitih rješenja za pogon – hibridni električni, plug-in hibridni električni, baterijski električni, električni s gorivnim člancima i e-goriva – prema potrebama različite potrebe korisnika i lokalnu infrastrukturu.\r\n\r\nUkupno 10 prototipova Hiluxa s gorivnim člancima sada je izgrađeno u tvornici Toyota Motor Manufacturing UK (TMUK) u Derbyju, Engleska. Pet vozila prolazi rigorozna testiranja na terenu kako bi se procijenila sigurnost, performanse, funkcionalnost i trajnost, generirajući podatke o testnoj vožnji u stvarnim situacijama. Još pet jedinica uključeno je u demonstracije za kupce i medije, uključujući dvije na nadolazećim Olimpijskim i Paraolimpijskim igrama u Parizu 2024. Uključivanjem kupaca u tehnologiju vodikovih gorivnih članaka, Toyota postavlja temelje za uspješan sektor transporta vodika u budućnosti.', 3, 'https://autoportal.hr/wp-content/uploads/2024/06/Toyota_Hilux_FCEV_Prototype-2.jpg', '2024-06-13 11:01:51'),
(3, '12. lipnja 1934. u Londonu označen prvi pješački prijelaz, preteča ‘zebre’', 'Prva pješačka zebra postavljena je 31. listopada 1951. u engleskom Sloughu. Nakon što su 1949. grafičke oznake na asfaltu eksperimentalno postavljene na tisuću lokacija u Velikoj Britaniji, smrtnost pješaka smanjena je za 11 posto, pa su prije 73 godine i zakonski standardizirane te uskoro prihvaćene u cijelom svijetu.\r\n\r\nNo preteča pješačke zebre bile su oznake pješačkih prijelaza s dvije debele (isprekidane) točkaste linije poprečno na kolnik, koje su postavljene 12. lipnja 1934. u Londonu. Nakon što je broj poginulih pješaka u Londonu premašio sto godišnje, na 60 lokacija, preko najfrekventnijih prometnica, uzdužnim isprekidanim, odnosno točkastim linijama, označeni su pješački prijelazi.\r\n\r\nBritansko Ministarstvo transporta službeno je objavilo da ‘pješaci ne smiju ometati slobodnu kretnju vozila koja voze ravno, ali vozila koja skreću desno, moraju propustiti pješake koji prelaze cestu preko označenih prijelaza’. Ovo početno kompromisno rješenje dalo je kakvu-takvu prednost pješacima, koji su se trebali usredotočiti samo na vozila koja voze ravno. Kazna za vozače, ali i pješake koji su kršili to pravilo bilo je tada velikih 5 šilinga (današnji ekvivalent 700 kn).\r\n\r\nPotpuna prednost pješacima na pješačkom prijelazu uvedena je ‘pješačkom zebrom’.', 3, 'https://autoportal.hr/wp-content/uploads/2022/06/Pjesacki-prijelaz.jpg', '2024-06-13 11:02:12'),
(4, 'Klasični automobili, isplati li se ulagati u njih?', 'Klasični automobili proizvedeni prije više od 30 godina postaju sve popularniji među ljudima koji traže prilike za ulaganje. Prema riječima Matasa Buzelisa, automobilskog stručnjaka u carVerticalu, pažljivo odabrani, besprijekorni modeli mogu povećati svoju vrijednost nekoliko puta, već nakon nekoliko godina.\r\n\r\nŠto se smatra klasičnim automobilom? Da bi se automobil smatrao klasikom, treba biti proizveden prije više od 30 godina. Međutim, nije svaki automobil star 30 godina buduća vrijedna investicija. Opseg proizvodnje, cijena i razlozi koji stoje iza proizvodnje mogu objasniti zašto se neka vozila smatraju pravim klasikom, a druga ne.\r\n\r\nNa primjer, vozilo koje je bilo iznimno popularno i pristupačno za veliki broj ljudi vjerojatno neće postati vrlo poželjan klasik, ali njegova najpopularnija, najmoćnija ili najrjeđa verzija mogla bi postati popularna među entuzijastima i smatrati se klasikom.\r\n\r\nNa primjer, Ford Sierra bio je popularan automobil 80-ih i 90-ih, ali to nije model koji bi kolekcionari klasičnih vozila poželjeli. Međutim, to nije slučaj s Cosworthom, verzijom Ford Sierre s vrhunskim performansama, koji je bio namijenjen utrkama i koji je imao ograničenu proizvodnju.', 3, 'https://autoportal.hr/wp-content/uploads/2024/06/Volkswagen-Golf-1-Matija-Kopun.jpg', '2024-06-13 11:02:39'),
(5, 'HDZ-ovac koji je dobio manje glasova od Ave dobiva svoj ured, zamjenike i veću plaću', 'Radom Ureda za odnose s javnošću upravljao bi glasnogovornik vlade, kojeg također imenuje vlada na premijerov prijedlog.\r\n\r\nZakon predviđa da glasnogovornik vlade, koji sada ima status državnog dužnosnika, ima položaj državnog tajnika te da ima i zamjenike koji će također biti državni dužnosnici, a imenovali bi se po istom postupku kao i on. Aktualni glasnogovornik vlade je Marko Milić, jedan od najbližih suradnika šefa HDZ-a Andreja Plenkovića i njegova desna ruka.\r\n\r\nMilić, prema podacima iz veljače, prima neto plaću od 1836 eura. U ovom trenutku nije jasno koliko bi mu mogla rasti plaća. Prijedlog izmjena zakona spominje samo uređivanje \"radnopravnog statusa zatečenih službenika\".\r\n\r\nZadaća Milićevog ureda bi bila izvještavanje medija i javnosti o radu vlade, ali i izvještavanje vlade o stavovima medija i građana. Također bi bio zadužen za koordiniranje komunikacijskih aktivnosti tijela državne uprave i provedbu Zakona o pravu na pristup informacijama u vladi.', 1, 'https://ip.index.hr/remote/bucket.index.hr/b/index/87438434-827b-472d-98d2-d05decb17bef.jpg?width=765&height=402', '2024-06-13 11:03:17'),
(6, 'Utvrđena velika laž u istrazi nesreće podmornice Titan. \"Sve je izmišljeno\"', 'U LIPNJU prošle godine u imploziji privatne podmornice Titan, koja se spuštala do olupine Titanica, poginulo je svih petero putnika, koji su, prema navodima, stradali u djeliću sekunde.\r\n\r\nInternetom je kružio navodni transkript komunikacije između podmornice i matičnog broda. Transkript je sugerirao da su putnici bili svjesni nadolazeće implozije. No, šef tima američke savezne vlade koji istražuje katastrofu rekao je da je cijeli prijepis fikcija, piše New York Times.\r\n\r\n“Uvjeren sam da je riječ o lažnom prijepisu. Sve je izmišljeno”, rekao je kapetan Jason D. Neubauer, umirovljeni član američke obalne straže, koja je pokrenula istragu o imploziji prošlog lipnja, i predsjednik istražnog odbora Marine Corps.\r\n\r\n“Netko je to učinio dovoljno uvjerljivo”, tvrdi.\r\n\r\nTranskript koji je kružio internetom sugerirao je da su putnici podmornice bili svjesni brojnih alarma koji su se aktivirali u plovilu te da su o tome pravovremeno obavijestili i svoj matični brod. U međuvremenu su, saznaje se, američki istražitelji dobili i zapise o stvarnim komunikacijama između podmornice i matičnog broda Polar Prince. No, te informacije ostale su neobjavljeni dio istrage.\r\n\r\nNeubauer je rekao da njegov tim “nije pronašao nikakve dokaze” da su Titanovi putnici bili svjesni neposredne implozije ili svoje sudbine. \r\n\r\nNeubauer je dodao da je istraga o imploziji Titana bila jedna od najsloženijih koje je odradio kroz desetljeća rada te da bi konačni izvještaj o nesreći mogao biti gotov u sljedeće dvije do tri godine zbog \"brojnih komplikacija\".', 1, 'https://ip.index.hr/remote/bucket.index.hr/b/index/5d2b50fb-5e4f-4219-b16c-64475a2328e6.png?width=765&height=442', '2024-06-13 11:03:52'),
(7, 'U Splitu zaplijenjeni ovi kaktusi. Sadrže drogu', 'SPLITSKA policija izvijestila je o zapljeni kaktusa s drogom.\r\n\r\nNaime, policijski službenici Službe kriminaliteta droga dovršili su kriminalističko istraživanje nad 33-godišnjakom provedeno zbog sumnje da je počinio kazneno djelo Neovlaštena proizvodnja i promet drogama.\r\n\r\nTijekom kriminalističkog istraživanja, temeljem naloga suda, obavljena je pretraga doma i drugih prostorija koje navedeni koristi na splitskom području te su pronađene i od njega oduzete dvije plastične posude sa zasađene tri biljke kaktusa San Pedro i pet biljaka kaktusa Peyote, koje sadrže alkaloidni psihodelik-meskalin.\r\n\r\nPo dovršenom kriminalističkom istraživanju protiv 33-godišnjaka je podnesena kaznena prijava nadležnom državnom odvjetništvu, izvijestila je policija.', 1, 'https://ip.index.hr/remote/bucket.index.hr/b/index/93cd022d-2e10-4805-a362-6fb42c1d7fc8.JPG?width=765&height=510', '2024-06-13 11:04:13'),
(8, 'Kalinić je nazvao Džeku. Evo što se događa', 'S Kalinićem je igrao u Romi\r\nZa Romu je igrao od 2015. do 2021. godine, a ondje je igrao s Kalinićem. Bivši hrvatski reprezentativac bio je član rimskog kluba u sezoni 2019./2020., kada je igrao na posudbi iz Atletico Madrida. Kalinić je za Romu u 19 nastupa upisao pet golova i dvije asistencije. Poznata je i Džekina naklonost prema Hajduku. Naime, njegov najbolji prijatelj je Senijad Ibričić, veliki miljenik Torcide. Džeko također ima poveznicu s Hrvatskom tako što je u Dubrovniku vlasnik restorana, a Ibričić je prije dvije godine ovako govorio:\r\n\r\nIbričić prije dvije godine: Sve je moguće...\r\n\"Pa nas se povezuje zbog prijateljstva. Osim toga, Edin je često u Dalmaciji, pa ga navijači često sretnu i zovu. Ja, iskreno, i kao navijač, ali i njegov prijatelj, volio bih da zaigra za naš Hajduk. Ali opet, u ovom trenutku to nije realno. No, tko zna što se može dogoditi u skorije vrijeme.\"', 2, 'https://ip.index.hr/remote/bucket.index.hr/b/index/47b8a329-cc54-464e-8449-7dde2b5ab2eb.jpg?width=765&height=402', '2024-06-13 11:04:45'),
(9, 'Španjolski insajder: Prvotimac otpao za Hrvatsku. Ozlijedio se', 'ŠPANJOLSKA otvara Euro protiv Hrvatske u subotu od 18 sati. Miguel Angel Diaz, novinar radiopostaje Cope i insajder Reala i reprezentacije Španjolske, iz Njemačke javlja o problemu dva dana prije meča. Aymeric Laporte (30), stoper saudijskog Al Nassra i Španjolske s 29 nastupa za nacionalnu momčad, otpao je za utakmicu s Hrvatskom zbog ozljede mišića.\r\n\r\nDiaz otkriva ovo, kao i tko će ga zamijeniti kao starter. To će biti Nacho, kapetan Reala, koji je već sjajno uskočio tijekom nedavno završene klupske sezone. Real je naime imao strahovitih problema s ozljedama braniča. Gotovo cijelu sezonu odigrao je krpajući obranu i bez ključnih stopera Davida Alabe i Edera Militaa, ali je usprkos tome osvojio La Ligu i Ligu prvaka.\r\n\r\nJedan od najzaslužnijih za to je Nacho, koji je odlično pokrio poziciju centralnog braniča. On je četiri godine stariji od Laportea i ima četiri utakmice manje za Španjolsku. Očekuje se da uz Nacha stoper bude Robin Le Normand (27) iz Real Sociedada. On ima samo 11 nastupa za Španjolsku.', 2, 'https://ip.index.hr/remote/bucket.index.hr/b/index/4b7a93ac-c91d-4d4e-b620-a56dd36eba27.jpg?width=765&height=392', '2024-06-13 11:05:13'),
(10, 'Gattuso se na terenu plašio samo jednog čovjeka. Legendarna scena to dokazuje', 'GENNARO GATTUSO (46), nekadašnji legendarni talijanski reprezentativac i legendarni igrač Milana, jučer je potvrđen kao novi trener Hajduka. Ugovor je potpisan do lipnja 2026. godine, a talijanski trener u Split će stići sljedećeg tjedna na predstavljanje i početak priprema za novu sezonu.\r\n\r\nGattuso se plašio samo jednog čovjeka na terenu\r\nGattuso je svoj najbolji nogomet igrao od 1999. do 2012. u Milanu, gdje se isprofilirao u jednog od najboljih zadnjih veznih na svijetu. Novi Hajdukov trener bio je poznat po beskompromisnoj i često agresivnoj igri. Zbog toga je često ulazio u razmirice s protivnikom, a jedna od najpoznatijih situacija datira iz 2006. godine s utakmice Milana i Juventusa (3:1).\r\n\r\nPoznato je da se Gattuso nikoga nije plašio, niti ga se moglo previše kontrolirati kada krene u obračune. No jednog se čovjeka ipak plašio. Tijekom derbija s Juventusom na San Siru Gattuso je krenuo u obračune s protivnicima. Prvo je napao Emersona, a zatim i Zlatana Ibrahimovića, koji također nikome ne ostaje dužan.\r\n\r\nGattuso je bio spreman nastaviti okršaje u nedogled, no onda je pred njega došao kapetan Paolo Maldini (55). Gattuso je dobio lekciju i odmah zašutio. Autoritativni Maldini mu je održao kapetanski govor povišenim tonom i poručio mu: \"Začepi i smiri se.\" Gattuso ga je odmah poslušao.', 2, 'https://ip.index.hr/remote/bucket.index.hr/b/index/281aaee3-c0ab-4221-a739-6cbb3c144868.jpg?width=765&height=402', '2024-06-13 11:06:04'),
(12, 'Giovanni Michelotti (1921. – 1980.): najproduktivniji dizajner, skrojio BMW 2002…', 'Giovanni Michelotti se već s 14 godina zaposlio u studiju Stabilimenti Farina i naučio zanat, a 1946. je otvorio vlastiti dizajnerski studio. Za razliku od ostalih radionica, automobile je samo nacrtao i izrađivao prototip, a njegove su ideje potom drugi pretvarali u proizvodne serije.\r\n\r\nGiovanni Michelotti se već s 14 godina zaposlio u studiju Stabilimenti Farina i naučio zanat, a 1946. je otvorio vlastiti dizajnerski studio. Za razliku od ostalih radionica, automobile je samo nacrtao i izrađivao prototip, a njegove su ideje potom drugi pretvarali u proizvodne serije.', 3, 'https://autoportal.hr/wp-content/uploads/2024/01/Michelotti-Giovanni.jpg', '2024-06-13 12:00:31'),
(13, 'Jedan od najboljih mladih Hrvata teško je ozlijeđen. Neće igrati do kraja godine', 'LOKOMOTIVIN veznjak Fabijan Krivak (19) potrgao je križne ligamente u koljenu. Zbog toga će izbivati najmanje pola godine, što znači da ne bi trebao zaigrati do kraja 2024. Prošle sezone odigrao je 20 utakmica te je zabio jedan gol uz jednu asistenciju, a pogodak je zabio baš Dinamu u remiju 2:2 u veljači u Kranjčevićevoj ulici.\r\n\r\nPisalo se u studenom da ga želi i José Mourinho koji je tada vodio Romu, ali sve je ostalo na glasinama. Krivaka se smatra jednim od najboljih mladih igrača SuperSport HNL-a. Prema Transfermarktu vrijedi 600 tisuća eura, a ugovor s Lokomotivom mu traje do lipnja 2026. godine.', 2, 'https://ip.index.hr/remote/bucket.index.hr/b/index/3c05199d-f6d6-41cb-ab2d-99218e7dc9b5.jpg?width=765&height=510', '2024-06-13 12:04:48'),
(14, 'Europski tužitelji upali u veliku firmu. Državni tajnik: Ne znamo ništa o prevari', 'DRŽAVNI tajnik u Ministarstvu pravosuđa i uprave Juro Martinović izjavio je danas da hrvatske vlasti nemaju saznanja vezanih za sumnju u subvencijsku prevaru u tvrtki Vajda iz Čakovca, o čemu hitne dokazne radnje provodi Ured europskog javnog tužitelja (EPPO) u Zagrebu.\r\n\r\n\"U ovoj situaciji mi nemamo činjeničnih saznanja koja imaju tijela koja postupaju. Podupiremo rad, kao i naša državna odvjetništva, kao naše sudove. To su neovisna pravosudna tijela i u tom smislu vlada nema na to nikakvog utjecaja\", kazao je Marinović novinarima nakon sjednice vlade.\r\n\r\nUred europskog javnog tužitelja (EPPO) u Zagrebu izvijestio je da provodi hitne dokazne radnje nad više hrvatskih državljana u više hrvatskih županija zbog sumnji na subvencijsku prevaru u vrijednosti od više milijuna eura i krivotvorenje isprava. Prema pisanju medija, najnovija akcija EPPO-a usmjerena je na tvrtku Vajda iz Čakovca.  \r\n\r\nMartinović je istaknuo da vlada podupire rad EPPO-a i ni u jednoj fazi se ne petlja u njihov rad.', 1, 'https://ip.index.hr/remote/bucket.index.hr/b/index/0cc2db29-14ee-456a-bff5-250cfcbf58a8.jpg?width=765&height=405', '2024-06-13 12:19:42'),
(15, ' Papa Franjo sastat će se s Bidenom i Zelenskim na summitu najmoćnijih lidera svijeta', 'On je prvi papa koji će sudjelovati u raspravama skupine G7, industrijski najrazvijenijih zemalja svijeta.\r\n\r\nObjavljujući program za njegovo jednodnevno sudjelovanje Vatikan je najavio da će Franjo imati bilateralni sastanak s američkim predsjednikom Joeom Bidenom, također katolikom.\r\n\r\nVatikan je također objavio da će Papa uz to imati pojedinačno sastanke i s ukrajinskim premijerom Volodimirom Zelenskijem, francuskim Emmanuelom Macronom, indijskim Narendrom Modijem, brazilskim Luizom Inaciom Lula da Silvom, kanadskim Justinom Trudeauom, turskim Recepom Tayyipom Erdoganom, kenijskim Williamom Rutom, alžirskim Abdelmadjidom Tebbouneom, i čelnicom Međunarodnog monetarnog fonda (MMF) Kristalinom Georgievom', 1, 'https://ip.index.hr/remote/bucket.index.hr/b/index/99ebd573-b0c7-41fc-8b6e-8d4742232e19.png?width=765&height=438', '2024-06-13 12:36:29'),
(16, 'Alfa Romeo 156 1.8 T.S. (2004.): lupa pri niskim okretajima zbog varijatora faze ventila', 'Alfa Romeo 156 1.8 T.S. ima kvalitetan atmosferski benzinski motor sa 16 ventila i dvije svjećice po cilindru, kojemu je ‘rak-rana’ varijator faze usisnih ventila, a osjetljivi su i hidropodizačima ventila. Gotovo bez dvojbe problem je u varijatoru faze usisnih ventila, što je problem, jedini veći problem te, inače, kvalitetne serije usisnih benzinskih motora s četiri ventila i dvije svjećice po cilindru.\r\n\r\nNa taj problem utječe i korištenje nekvalitetnog ulja (varijator faze ‘traži’ sintetično ulje) te vožnja s manjkom ulja ili starim uljem, preskakanje izmjene uljnog filtra. Ako je to u pitanju, potražite dobri originalni rabljeni varijator faze ventila, koji je često bolji, a usto jeftiniji od novog, zamjenskog (dakle neoriginalnog).\r\n\r\nProblem može biti, a simptomi su slični, samo što se rjeđe javljaju trzaji pri ubrzanju, i zbog otkazivanja hidrauličkih podizača ventila, koji također ubrzano dotrajavaju i otkazuju zbog ‘štednje’ na ulju, filtru, ali i forsiranju nezagrijanog motora.\r\n\r\nNo, zbog godina i kilometraže (koja je možda i veća), a i činjenice da se Alfama često ‘vadi mast’ u vožnju, najprije treba izmjeriti tlakove kompresije, zbog moguće dotrajalosti i propuštanja na cilindrima/karikama, odnosno ventilima/sjedištima ventila.', 3, 'https://autoportal.hr/wp-content/uploads/2023/10/Alfa-Romeo-156-Twin-Spark.jpg', '2024-06-13 12:42:06'),
(17, 'BMW slavodobitno na čuvenom Isle of Man Tourist Trophy', 'Na uvijek fascinantnom događaju kakav je Isle of Man Tourist Trophy i ove godine je bilo spektakularno. BMW se pohvalio trostrukim slavljem. U sve tri održane utrke od 1000 ccm, BMW M 1000 RR ostvario je tri pobjede i druga mjesta. Čovjek tjedna bio je Davey Todd (GBR), koji je prvo pobijedio u Superstock utrci, a zatim osvojio pobjedu u prestižnoj Senior TT. Peter Hickman (GBR) pobijedio je u Superbike utrci. Njih su dvojica, uz Josha Brookesa (AUS), također zauzeli druga mjesta na postoljima. Time su BMW-ovi cestovni trkači nastavili uspješnu priču za marku na otoku Man, koja je započela prije točno 85 godina prvom pobjedom Georga Meiera.', 3, 'https://autoportal.hr/wp-content/uploads/2024/06/2024-Isle-of-Man-Tourist-Trophy-1.jpg', '2024-06-13 13:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Auti'),
(1, 'Politika'),
(2, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$k4I9msKyvddFp/JpOAyTIOLqxZRGoa/TCP8puTVbJf06MvLfJfoP.', '2024-06-13 10:42:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
