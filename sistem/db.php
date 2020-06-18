<?php
$Sunucu 			= "localhost";
$kullanici 			= "sarkiso2_admin";
$sifre 				= "K3m9ne4o.";
$veritabani 		= "sarkiso2_sarkisozu";
$onek 				= "db_";


$baglanti = @mysql_connect($Sunucu, $kullanici, $sifre) or die("<center><div class='alert alert-danger' role='alert'> <strong>HATA!</strong> Mysql bağlantısı sağlanılamadı.</div></center>");
$veritabani = @mysql_select_db($veritabani) or die('<center><div class="alert alert-danger" role="alert"> <strong>HATA!</strong> Veri tabanına bağlantı sağlanılamadı.</div></center>');
mysql_query("SET NAMES UTF8");
?>