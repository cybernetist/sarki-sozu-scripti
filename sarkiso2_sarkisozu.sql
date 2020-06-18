-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 18 Haz 2020, 12:44:44
-- Sunucu sürümü: 10.2.31-MariaDB-cll-lve
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sarkiso2_sarkisozu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `db_sarki`
--

CREATE TABLE `db_sarki` (
  `sarki_id` int(11) NOT NULL,
  `sarki_sarkici` varchar(255) NOT NULL,
  `sarki_adi` varchar(255) NOT NULL,
  `sarki_seo` varchar(255) NOT NULL COMMENT 'ileride kullanılır',
  `sarki_icerik` text NOT NULL,
  `sarki_ekleyen` varchar(255) NOT NULL,
  `sarki_anahtar` varchar(255) NOT NULL,
  `sarki_aciklama` varchar(255) NOT NULL,
  `sarki_link` varchar(255) DEFAULT NULL,
  `sarki_goruntulenme` int(11) NOT NULL DEFAULT 0,
  `sarki_tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `db_sarki`
--

INSERT INTO `db_sarki` (`sarki_id`, `sarki_sarkici`, `sarki_adi`, `sarki_seo`, `sarki_icerik`, `sarki_ekleyen`, `sarki_anahtar`, `sarki_aciklama`, `sarki_link`, `sarki_goruntulenme`, `sarki_tarih`) VALUES
(16, 'Azer Bülbül', 'İyi Değilim', '', 'İfade edemem şu an halimi\nAklım başımda değil ama deli değilim\nİfade edemem şu an halimi\nAklım başımda değil ama deli değilim\nSanki bağlamışlar iki elimi\nÇok zor durumdayım iyi değilim\nSanki bağlamışlar iki elimi\nÇok zor durumdayım iyi değilim\nDört bir yandan kuşatılmış şehir gibiyim\nHiç tadım yok gene zehir gibiyim\nÖyle doluyum ki nehir gibiyim\nÇok zor durumdayım iyi değilim\nDört bir yandan kuşatılmış şehir gibiyim\nHiç tadım yok gene zehir gibiyim\nÖyle doluyum ki nehir gibiyim\nÇok zor durumdayım iyi değilim\nBen de bilmiyorum neden böyleyim\nŞaşırmış kalmışım nasıl edeyim?\nTaş duvar nasılsa işte öyleyim\nÇok zor durumdayım, çok zor durumdayım iyi değilim\nİyi değilim, çok zor durumdayım iyi değilim, iyi değilim\nO kadar yorgunum o kadar ağır\nGözlerim görmüyor, kulağım sağır\nO kadar yorgunum o kadar ağır\nGözlerim görmüyor, kulağım sağır\nHer nefes bin defa canımı alır\nÇok zor durumdayım, iyi değilim\nHer nefes bin defa canımı alır\nÇok zor durumdayım, iyi değilim\nDört bir yandan kuşatılmış şehir gibiyim\nHiç tadım yok gene zehir gibiyim\nÖyle doluyum ki nehir gibiyim\nÇok zor durumdayım iyi değilim\nDört bir yandan kuşatılmış şehir gibiyim\nHiç tadım yok gene zehir gibiyim\nÖyle doluyum ki nehir gibiyim\nÇok zor durumdayım iyi değilim', '', '', '', NULL, 0, '2020-04-30 14:34:48'),
(17, 'Sansar Salvo', 'Sigara Yanınca', '', 'Kalem kağıtla karşılaşmayalı uzun zaman oldu,\r\nÖlüm yaşam arasında uzunca bir yoldu.\r\nHaydi doldur hancı sende bugün yorgunluk boldur,\r\nHaydi doldur şu aklımdakini durdur.\r\nSağ tarafta korku sol tarafta sorgu nerde uyku ?\r\nKafiyeler basit oldu, bak bu doğru.\r\nİstiyorsan sen git ama gelmiyorum oldu,\r\nO halde yine bu gece şeytanımla randevu.\r\nSorunlu bir sabah ve havada yağmurlu,\r\nHiçbir yer turuncu değil ön camım da buğulu.\r\nSilecekler ses yapıyor sanki stres atıyorlar,\r\nYürüsem daha iyiydi trafikte durdu.\r\nGeri dönmüyordum ama dönmüş bulundum,\r\nVe eleştiri ve iftiralar geri dönmüş oldu.\r\nAdamlar kaypak kızlar sahte oluyorlar,\r\nİşte rapci tam bu yüzden cüzdanım doldur.\r\n\r\n\r\nKanımca kendini kendine harca\r\nSigaram yanınca, sigaram yanınca\r\n\r\nAnca gidersin anca sigara yanınca\r\n\r\n\r\nHaydi böyle gergin olma güzel şeyler düşün,\r\nKaranlık değişir ve ışığa dönüşür .\r\nGözlerini kapatınca gülüştüğünü düşün sonra\r\nİnceden terk edicem üşüştüğüm düşü\r\nÇünkü doğru olan zordur kalbi durdurur bir acı bazen (acı bazen)\r\nYani dostum hapşu çünkü doğru olan zordur .\r\nÇocuk uzak dur der bu nefsimin keskin sesi duyan da yoktur.\r\nHiçbir şarkı hiçbir şeyi değiştirmez aslında\r\nAslında biraz adamsan çekip gidersin ,\r\nBazen birşeyler duyarsın yerli yersiz ve\r\nBazen haklı olsan bile özür dilersin ,\r\nSöylüyecek fazla bir şey yok uykun geldiyse\r\nKabus artık bittiyse güneş seninse\r\nKimisi anladığında çok geç Kimisi dinlediğinde\r\nKimide nefret etmekten zevk alır nedense ?\r\n\r\n\r\nKanımca kendini kendine harca\r\nSigaram yanınca, sigaram yanınca\r\nAnca gidersin anca sigara yanınca', '', '', '', NULL, 0, '2020-04-30 17:34:57'),
(18, 'Koray Avcı', 'Aşk Sana Benzer', '', 'bir gün çıkıp gel uzak yollardan\r\nbenim can yaramı sarmak için\r\nçünkü bir nefes ki aşk sana benzer\r\n\r\nbenim can yaramı sarmak için\r\nçünkü derin bir nefes ki aşk sana benzer\r\n\r\ngökte parlayan ay kalpte\r\n\r\nincinen söz çölde\r\nışıldayan su sana benzer\r\n\r\nhoyrat bir aşk içinde\r\nyandım çok zaman\r\nsöyle koca bir hayat nasıl gecer\r\nsenle gecen her ömür sana benzer\r\n\r\nşimdi söyle bu hayat nasıl gecer\r\nsensiz geçen her ömür küle benzer\r\n\r\ngökte parlayan ay kalpte\r\nincinen söz çölde\r\nışıldayan su sana benzer.. 2x2', '', '', '', NULL, 0, '2020-04-30 17:37:48'),
(20, 'Yılmaz Erdoğan', 'Yağmur', '', 'Yer ile yeksan, ıslak saçlı, kem gözlü\r\nKavim göçlerinden bu yana ağlayan\r\nVe durmadan cep kanyağı yakıcılığında\r\nEziler çalan , çaldıran , yakalatan\r\nAdı bende gizli bir kadındı istanbul\r\nŞehre bir yağmur yağdı ben ağladım\r\nSevilirken ayrılmakmı kaldı Bizansta\r\nOyun dolan yoktu gözlerde , yalnızca ses\r\nVerilmiş sözler birdi, edilen yemimler sıfır\r\nEşyalar alındı fotoğraflar söküldü yerlerinden\r\nBir aşkın izlerini yok edecek\r\nBir başka aşk sipariş edildi yeniden\r\nBir şehre yağmur yağdı, ben ağladım\r\nKim daha çok yalan söndürdü çay bardaklarında\r\nHangisi talandı demli öpücüklerin\r\n\r\nVe buğularda yitirilen kimin adıydı\r\nBir aşktan diğerine kaç saatte gidiliyordu\r\nSoyulurmuydu kabuğu hayatın\r\nYoksa bütün vitamini kabuğundamıydı\r\nYağmur şehre bir yağdı ben ağladım\r\nBen giderken en çok seni götürdüm\r\nAklımın nakliyesiydi asıl yoran taşıyıcıları\r\nYardan düşmüştüm yaralarım yardan armağandı\r\nKutsal kitabımdı ziyan edilmiş sevgililer\r\nBense sevmeyi beceremedim\r\nBelki de sevilmeyi\r\nBenim sevmeye engel evcil acılarım vardı\r\nBen yağmur ağladım, bir şehre yağdı\r\nBen şehre ağladım, bir yağmur yağdı\r\nBen bir ağladım, şehre yağmur yağdı\r\nBen,\r\nyağmur,\r\nağladım....', '', '', '', NULL, 0, '2020-04-30 17:40:34'),
(21, 'Selda Bağcan', 'Gesi Bağları', '', 'Gesi bağlarından dolanıyorum\r\nYitirdim yarimi amman aranıyorum(2)\r\nBir çift selamına güveniyorum\r\nGel otur yanıma hallarımı söyleyim\r\nHalımdan bilmiyor ben o yari neyleyim\r\n\r\nGesi bağlarında üç top gülüm var\r\nHey Allahtan korkmaz sana bana ölüm var(2)\r\nÖlüm var sa bu dünyada zulüm var\r\nAtma garip anam beni dağlar ardına\r\nKimseler yanmasın anam yansın derdime', '', '', '', NULL, 0, '2020-04-30 17:41:18'),
(22, 'Haluk Levent', 'Elfida', '', '\0', '', '', '', NULL, 0, '2020-04-30 17:42:02'),
(23, 'Sezen Aksu', 'Sen Ağlama', '', 'Hasret oldu ayrılık oldu\r\nHüzünlere bölündü saatler\r\nGördüm sarkan iki damla yaş\r\nAyrılıkta sevgiyle beraber\r\n\r\nBir şarkı bir şiir gibi\r\nYaşadım canım acıları\r\nSenden bana hatıra şimdi\r\nSakladığım sevgili kederler\r\n\r\nBir sır gibi saklarım seni\r\nBir yemin bir gizli düş gibi\r\nBen bu yükü taşırım sen git\r\nGit acılarla....\r\n\r\nSen ağlama dayanamam\r\nAğlama göz bebeğim sana kıyamam\r\nAl yüreğim senin olsun\r\nYüreğin bende kalırsa yaşayamam.', '', '', '', NULL, 0, '2020-04-30 17:42:56'),
(24, 'Ebru Gündeş', 'Yalan', '', 'Yalnızlık kolay değil anladım\r\nYüreğim yangınlarda geri dön\r\nTükendi bitti artık bedenim\r\nAyrılık ölümden daha zor\r\nTükendi bitti artık bedenim\r\nAyrılık ölümden daha zor\r\n\r\nKırık dökük bir sal gibi battım ha batacağım\r\nMahşer günü günahına inan kefil olacağım\r\nDönmeyeceksen söyle ateşinle yanacağım\r\nYandığım ateşlerde sevdan gibi yalan yalan\r\nDönmeyeceksen söyle ateşinle yanacağım\r\nYandığım ateşlerde sevdan gibi yalan yalan\r\n\r\nYalan yalan yalan yalan yalan yalan\r\nSevdan aşkın yalan yalan\r\nYalan yalan yalan yalan yalan yalan\r\nSevdan aşkın yalan yalan\r\n\r\nKırık dökük bir sal gibi battım ha batacağım\r\nMahşer günü günahına inan kefil olacağım\r\nDönmeyeceksen söyle ateşinle yanacağım\r\nYandığım ateşlerde sevdan gibi yalan yalan\r\nDönmeyeceksen söyle ateşinle yanacağım\r\nYandığım ateşlerde sevdan gibi yalan yalan\r\n\r\nYalan yalan yalan yalan yalan yalan\r\nSevdan aşkın yalan yalan\r\nYalan yalan yalan yalan yalan yalan\r\nSevdan aşkın yalan yalan\r\n\r\nYalan yalan yalan yalan yalan yalan\r\nSevdan aşkın yalan yalan\r\nYalan yalan yalan yalan yalan yalan\r\nSevdan aşkın yalan yalan', '', '', '', NULL, 0, '2020-04-30 17:44:12'),
(25, 'Ferhat Göçer', 'Yolun Açık Olsun', '', 'Kız hayırsız kuruttun kanımı\r\nHadsiz hesapsız kırdın sol yanımı\r\nHiç huyum değil almadın ahımı\r\nAahhhh\r\nBen tartamam çekmez terazim\r\nKul hakkını\r\n\r\nYolun açık olsun turnam özgürsün\r\nGünü gece basar bazen\r\nGönül gözün görsün\r\n\r\nHırsız çaldın canımın yarısını\r\nSürdün bahtıma katran karasını\r\nHiç huyum değil almadın ahımı\r\nAahhhh\r\nBen tartamam çekmez terazim\r\nKul hakkını\r\n\r\nYolun açık olsun turnam özgürsün\r\nGünü gece basar bazen\r\nGönül gözün görsün', '', '', '', NULL, 0, '2020-04-30 17:46:09'),
(26, 'Ümit Besen', 'Yıkılan Gurur', '', 'Sana kul köle oldum fayda etmedi\r\nÖlürcesine sevdim çilem bitmedi\r\nNe yazık aşktada şans yaver gitmedi\r\nBen herşeye alıştım sen kendine bak\r\nSen kendine bak sen kendine bak\r\n\r\nMutluluklar dilerim yeni aşkınla\r\nSen beni düşünmeden yaşamana bak\r\nSenin dertlerin varya benim yanımda\r\nBen onlarla yaşarım sen keyfine bak\r\n\r\nBen ağlatılmak için yaratılmışım\r\nEn sevdiğim sen bile ağlatmadın mı\r\nKoskoca şu dünyada sana muhtaçtım\r\nEn kötü günde beni bırakmadın mı\r\nBırakmadınmı bırakmadın mı', '', '', '', NULL, 0, '2020-04-30 17:46:47'),
(27, 'Ajda Pekkan', 'Farkın Bu', '', 'Dün gece düşümde\r\nSeni gördüm aynı gülüşünle\r\nBana yakındın\r\nMutluydum bu dönüşünle\r\n\r\nDinmişti yağmur\r\nGökkuşağı göründü ve\r\nNe çok ısıttın\r\nHiç uyanmak istemedim\r\n\r\nSensizlik erken\r\nAlışırım belki derken\r\nOlmadı işte\r\nVazgeçmedim senelerden\r\n\r\nDuyarım seni\r\nSessizlik her yerdeyken\r\nSon kalışındı\r\nHiç unutmak istemedim\r\n\r\nSenin için çalınıyor sanki\r\nYalnızlığın sevdiği şarkı bu\r\nSenin için söyleniyor hala\r\nBir daha bir daha farkın bu.', '', '', '', NULL, 0, '2020-04-30 17:49:38'),
(28, 'Sagopa Kajmer', 'Beyaban', '', '1.Bölüm\r\nKuşkularıma bir kuş kondu,saçlarımda kış soludu.\r\nHınç kuruttu mutluluğunu,tırs bu kez bu hırs sorunlu.\r\nHayat zulümlü,kader oyunlu.\r\nKim yerlerden toplayacak sürgün kader yorgununu ?\r\nHer işte bir hayır ve her hayırda bir de şer yatılıdır.\r\nTerim işimin kanıtıdır.\r\nPeynirimde gözü olan karga,kanatların elimle kırılır,\r\nüzüntülerimi paketlesinler söyle fiyatı kaç mangır ?\r\nKırık hayaller kaç satır ?\r\nBana küfreder gözlerin dudakların yardım yalvarır,\r\nhırslarınızın yıprantısı yüzlerinizden yansır,\r\nbenden firârî bu sır.\r\nben yapmadan önce kendi gölünde salını batır !\r\nGünahlarımı taşıyanın adı hamal değil,melekti.\r\nSaflığında lekeydim,af buyur zaman bir hayli geçti.\r\nYunus şıkkı seçti, 3 yanlışım bir doğrumla çekti gitti.\r\nBütün hikayem burda bitti...\r\n\r\n\r\n\r\nBeyâban,bâranın yaşı gözümün,özü bednam salmış hüzünümün yüzü gülsün.\r\nAhvâlim suskun,dokunan bana mendil tutsun.\r\n\r\n\r\n\r\nBeyâban,fırtınan beni kavurur,gözyaşım kum olur dağılır kumun o tozuna karışır\r\nBiraz merhamet eyle..etme..eyleme.\r\n\r\n\r\n2.Bölüm\r\nYüreğimin tel örgüsünü paramparça eden haydut,\r\nhain çelmesiyle pusuda bekler,yüzüme bakar nemrut.\r\nSedâmla gecenin örtüsünü yırttım dilini tut.\r\nŞüphelerim seslendikçe geçilemeyecektir benim hudut.\r\nBak,güneş parlaklığıyla yüce,deniz dalgalarıyla ulu.\r\nHeybetimin rüzgarıyla söğütçesine titredi rabbin kulu\r\ngöğe açılan iki elimin bil ki birdir yolu.\r\nMikrofon icâdoldu,elim yazdı,vurdum sağlı sollu.\r\nÖldürme gözlerini görünce beni sîmamı belle !\r\nLisanım benimle koç,kül yutmaz hile.\r\nBir beyitte çift sille.\r\nBile bile gülümse.\r\nAğırbaşlı bir dille mürekkep yalar bu dede.\r\nUykusuz geceyle aşka dal,tam ortasında uyuya kal.\r\nBu acımasız hayal bir kabusun esiri ve kör topal.\r\nKendime verdim emri,kim çekerse çeksin resti.\r\nBaşı dönük divânenin âvâre gezer hisleri...\r\n\r\n\r\n\r\nBeyâban,bâranın yaşı gözümün,özü bednam salmış hüzünümün yüzü gülsün.\r\nAhvâlim suskun,dokunan bana mendil tutsun.\r\nBeyâban,fırtınan beni kavurur,gözyaşım kum olur dağılır kumun o tozuna karışır\r\nBiraz merhamet eyle..etme..eyleme..', '', '', '', NULL, 0, '2020-04-30 17:51:14'),
(31, 'Yıldız Tilbe', 'Yar Yanına Geleceğim', '', 'CANIM ASKIM SU AN YOLDASIN ACIK OLSUN\r\nGITTIGIN YER BASTIGIN TOPRAK NE SANSLI\r\n\r\nBIR YANINDA ASK BIR YANINDA MESK\r\nUGURLAR OLSUN GIT GEL\r\nHERSEY SEVINCLE SELAM GETIRSIN\r\nISIN GÜCÜN RAS GELSIN\r\n\r\nSUAN YANINDA OLSAM\r\nKÖLEN KÖPEGIN OLSAM\r\nATTIGIN LOKMAYLA DOYSAM\r\nHER SEYIMI TOPLADIM KENDIMI HAZIRLADIM\r\n\r\nYAR YANINA GELECEGIM YAR SENI HEP SEVECEGIM\r\nYAR DAYANAMAYACAGIM YAR AKSAM ÜSTÜ ORDAYIM\r\nYAR YANINA GELECEGIM YAR SENI HEP SEVECEGIM\r\nYAR DAYANAMAYACAGIM YAR AKSAM ÜSTÜ ORDAYIM\r\n\r\nCANIM ASKIM RUHUM KALBIMIN AKLI SENDE\r\nSENI ÜZEN HER AN ICIN ÖYLE PISMANIM\r\nDARMA DAGINIM COK ZAVALIYIM\r\nBEDENIM BURDA BEN ORDAYIM\r\n\r\nDERDIMDE SENSIN DERMANIMDA SEN\r\nCOK BEKLETMEDEN GELSEN\r\n\r\nSUAN YANINDA OLSAM\r\nKÖLEN KÖPEGIN OLSAM\r\nATTIGIN LOKMAYLA DOYSAM\r\nHER SEYIMI TOPLADIM KENDIMI HAZIRLADIM\r\n\r\nYAR YANINA GELECEGIM YAR SENI HEP SEVECEGIM\r\nYAR DAYANAMAYACAGIM YAR AKSAM ÜSTÜ ORDAYIM\r\nYAR YANINA GELECEGIM YAR SENI HEP SEVECEGIM\r\nYAR DAYANAMAYACAGIM YAR AKSAM ÜSTÜ ORDAYIM\r\n\r\nYAR YANINA GELECEGIM YAR SENI HEP SEVECEGIM\r\nYAR DAYANAMAYACAGIM YAR AKSAM ÜSTÜ ORDAYIM\r\nYAR YANINA GELECEGIM YAR SENI HEP SEVECEGIM\r\nYAR DAYANAMAYACAGIM YAR AKSAM ÜSTÜ ORDAYIM', '', '', '', NULL, 0, '2020-04-30 18:18:13'),
(32, 'Müslüm Gürses', 'İtirazım Var', '', 'İtirazım var bu zalim kadare\r\nİtirazım var bu sonsuz kedere\r\nFeleğin cilcesine\r\nHayatın silvesine\r\nDertlerin cümlesine\r\nİtirazım var\r\n\r\nYarım kalan sevgiye\r\nŞu emanet gülmeye\r\nYAşamadan ölmeye\r\nİtirazım var\r\n\r\nBen hep yenilmeye mahkum muyum?\r\nBen hep ezilmeye mecbur muyum?\r\nİtirazım var bu yalan dolana\r\nBenim şu dertlere ne borcum var ki\r\nTuttu yakamı bırakmıyor\r\nBenim mutlulukla ne zorum var ki\r\nBana cehennemi aratmıyor\r\n\r\nİtirazım var değişmez yazıma\r\nİtirazım var bu dertli şansıma\r\nSevginin sahtesine\r\nHayatın cilvesine\r\nDertlerin böylesine\r\nİtirazım var\r\n\r\nYalan dolu gözlere\r\nDurulmamış sözlere\r\nDost olmayan yüzlere\r\nİtirazım var\r\n\r\nBen hep yenilmeye mahkum muyum?\r\nben hep ezilmeye mecbur muyum?\r\nİtirazım var bu yalan dolana\r\nBenim şu dertlere ne borcum var ki\r\nTuttu yakamı bırakmıyor\r\nBenim muttlulukla ne zorum var ki\r\nBana cehennemi aratmıyor\r\nbana cehennemi aratmıyor', '', '', '', NULL, 0, '2020-04-30 18:24:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `db_site`
--

CREATE TABLE `db_site` (
  `db_site_id` int(11) NOT NULL,
  `db_site_durum` int(11) NOT NULL,
  `db_site_online` int(11) NOT NULL,
  `db_site_toplam_goruntulenme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `db_site`
--

INSERT INTO `db_site` (`db_site_id`, `db_site_durum`, `db_site_online`, `db_site_toplam_goruntulenme`) VALUES
(5, 1, 1, 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(3, 'admin', '$2y$10$feVTBuYFKFyhh53wSr2VtOBHi1FN/BZROiV9QFAEEez4TDTv4Py5y');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `db_sarki`
--
ALTER TABLE `db_sarki`
  ADD PRIMARY KEY (`sarki_id`);

--
-- Tablo için indeksler `db_site`
--
ALTER TABLE `db_site`
  ADD PRIMARY KEY (`db_site_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `db_sarki`
--
ALTER TABLE `db_sarki`
  MODIFY `sarki_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `db_site`
--
ALTER TABLE `db_site`
  MODIFY `db_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
