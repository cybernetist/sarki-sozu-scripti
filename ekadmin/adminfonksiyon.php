<?php
//Site Ayarları

$siteurl          = "index.php";
$siteadi          = "Şarkı Sözleri";
$siteaciklama     = "Birbirinden ünlü şarkıların sözleri burada.";
$sitealtaciklama  = "Mehmet Dursun Yüzgeç - 177117021";


//Site Ayarları


//Güvenlik Ayarları
function post($deger)
{
    if(isset($_POST[$deger]))
    {
        return strip_tags(htmlentities(htmlspecialchars(addslashes(trim($_POST[$deger])))));
    }
    else
    {
        return false;
    }
}

function get($deger)
{
    if(isset($_GET[$deger]))
    {
        return strip_tags(htmlentities(htmlspecialchars(addslashes(trim($_GET[$deger])))));
    }
    else
    {
        return false;
    }
}

function guvenlisayi($sayi)
{
    if(!(int)number_format(intval((trim($sayi)))) <= 0 || !(int)number_format(intval((trim($sayi)))) <= -1)
    {
        if(!$sayi <=-1 || $sayi <= 0)
        {
            return (int)(intval(trim(number_format($sayi))));
        }
    }
}

//Güvenlik Ayarları Bitiş

//Site Durum Ayarları

$sonuc = mysql_query("SELECT * from ".$onek."site");

if(mysql_num_rows($sonuc)!=0)
{
    while($oku = mysql_fetch_assoc($sonuc))
    {
        $sitedurum 				=	$oku['db_site_durum'];

    }
}else{
    $sitedurum 				= 0;


}
//Site Durum Ayarları Bitiş


//Tarih işlemleri
date_default_timezone_set('Europe/Istanbul');
$gunler = array(
    'Pazartesi',
    'Salı',
    'Çarşamba',
    'Perşembe',
    'Cuma',
    'Cumartesi',
    'Pazar'
);

$aylar = array(
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
);

$ay = $aylar[date('m') - 1];
$gun = $gunler[date('N') - 1];
$jcek = date('j');
$ycek = date('Y');
$hiscek = date('H:i:s');

function timeConvert ( $zaman ){
    $zaman =  strtotime($zaman);
    $zaman_farki = time() - $zaman;
    $saniye = $zaman_farki;
    $dakika = round($zaman_farki/60);
    $saat = round($zaman_farki/3600);
    $gun = round($zaman_farki/86400);
    $hafta = round($zaman_farki/604800);
    $ay = round($zaman_farki/2419200);
    $yil = round($zaman_farki/29030400);
    if( $saniye < 60 ){
        if ($saniye == 0){
            return "az önce";
        } else {
            return $saniye .' saniye önce';
        }
    } else if ( $dakika < 60 ){
        return $dakika .' dakika önce';
    } else if ( $saat < 24 ){
        return $saat.' saat önce';
    } else if ( $gun < 7 ){
        return $gun .' gün önce';
    } else if ( $hafta < 4 ){
        return $hafta.' hafta önce';
    } else if ( $ay < 12 ){
        return $ay .' ay önce';
    } else {
        return $yil.' yıl önce';
    }
}




?>