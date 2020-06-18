<?php require_once('../sistem/db.php'); ?>
<?php
error_reporting(0);
?>
<?php
// Form Gönderilmişmi Kontrolü
if ($_POST) {

    // Formdan Gelen Kayıtlar
    $adi        =    $_POST["sarki_adi"];
    $sarkici     =    $_POST["sarki_sarkici"];
    $sarkisozu   =    $_POST["sarki_icerik"];

    // Veritabanına Ekleme
    $ekle        =    mysql_query("insert into db_sarki (sarki_adi,sarki_sarkici,sarki_icerik) values ('$adi','$sarkici','$sarkisozu')");

    // Sorun Oluştu mu diye test 
    if ($ekle) {
        echo "<script>alert('Başarı ile Eklendi');</script>";
    } else {
        echo "Bir Sorun Oluştu";
    }
}


    if ($_GET["SarkiSil"]) {
    $SarkiId = $_GET["SarkiSil"];
    $sil = mysql_query("delete from db_sarki where sarki_id=" . $SarkiId . "");
    if ($sil) {
        echo "<script>alert('Şarkı Başarıyla Silindi');</script>";
    } else {
        echo "Bir Sorun Oluştu";
    }
}


?>

<?php
session_start();
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js">
</script>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/stil.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


    <?php require_once('../sistem/db.php'); ?>

    <style class="custom-css">
        #jumbo {
            background-color: #333;
            color: #eee;
        }

        #jumbo p {
            font-size: 16px;
        }

        #try-header {
            margin: 30px 0px;
        }

        #try-more {
            margin: 30px 0px;
            font-style: italic;
        }
    </style>

    <!-- Helvetica -->
    <style type="text/css">
        @font-face {

            font-family: Helvetica;
            src: local('Arial');
        }

        @font-face {

            font-family: 'Helvetica Neue Custom';
            src: local('Arial');
        }

        @font-face {

            font-family: Helvetica;

            font-weight: bold;

            font-weight: 700;
            src: local('Arial');
        }

        @font-face {

            font-family: "Helvetica Neue";

            font-weight: bold;

            font-weight: 700;
            src: local('Arial');
        }

        @font-face {

            font-family: "Helvetica Neue Custom";

            font-weight: bold;

            font-weight: 700;
            src: local('Arial');
        }

        @font-face {

            font-family: "Helvetica Neue";
            src: local('Arial');
        }
    </style>
    <!-- Helvetica -->



</head>

<body>




    <!-- Menü -->

    <?php require_once('adminmenu.php'); ?>

    <!-- Menü Bitiş -->


    <!-- Arama Bölümü -->

 <br>
    <div class="container ">
      <div class="row text-center">
        <div class="col-md-12" style="display: block;">
          <h4 class="text-center">
            Şarkı Sil
          </h4>
          <ul class="list-group">
<?php
$sonuc = mysql_query("SELECT * from ".$onek."sarki ORDER BY sarki_id DESC limit 10");

if(mysql_num_rows($sonuc)!=0)
{
    while($oku = mysql_fetch_assoc($sonuc))
    {
    ?>
          <li class="list-group-item">
                <a href="index.php?sarki=<?php echo $oku['sarki_id']; ?>">
          
           <?php echo $oku['sarki_sarkici']; ?> - <?php echo $oku['sarki_adi']; ?>
                    <a class="btn btn-primary" style="float: right" href="sarkisil.php?SarkiSil=<?php echo $oku["sarki_id"] ?>">Sil</a>
            </a>
            </li>
          

          <br>
  <?php
    }
}
?>


  
          </ul>
        </div>

      </div>

</body>

</html>