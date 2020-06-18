<?php
require_once('sistem/fonksiyon.php');
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
  <title><?php echo $siteadi ?></title>
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/stil.css" rel="stylesheet">

  <?php require_once('sistem/db.php'); ?>

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

  <!-- Helvetica Problemi -->
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
  <!-- Helvetica Problemi -->



</head>

<body>



  <!-- Menü -->

  <?php require_once('menu.php'); ?>

  <!-- Menü Bitiş -->


  <!-- Arama Bölümü -->

  <center>
    Arama Yapın.

    <form action="" method="get" class="navbar-form" role="search">
      <div class="form-group">
        <input type="text" name="ara" class="form-control arama" placeholder="Ara">
      </div>
      <div class="form-group tip">
        <select class="form-control s-select" name="tip">
          <option value="sarki">Şarkı</option>
          <option value="sarkici">Şarkıcı</option>
        </select>
        </span>

      </div>
      <button type="submit" class="btn btn-default">Ara</button>
    </form>
  </center>


  <!-- A'dan Z'ye -->
  <center>
    <ul class="pagination">
      <?php for ($i = 'A'; $i <= 'Z'; $i++) {
        if ($i == 'AA') {
          break;
        }
      ?>
        <li>
          <a href="index.php?ara=<?php echo $i; ?>"><?php echo $i; ?></a>
        </li>
      <?php
      } ?>
    </ul>
  </center>
  <!-- A'dan Z'ye Bitiş -->

  <?php if ($sitedurum == 0) //Site Açıksa
  {
  ?>
    <div class="container">
      <center>
        <div class='alert alert-warning' role='alert'> <strong>UYARI!</strong><br> Ulaşmaya çalıştığınız sayfa şuanda bakım çalışması nedeniyle kapalıdır. Lütfen daha sonra tekrar deneyiniz. <br> Anlayışınız için teşekkür ederiz.
          <img src="img/ikon/gulucuk.png" height="23">
      </center>
    </div>
    <?php
  } else {

    //ARAMA EKRANI

    if (get('ara')) {
      if (get('tip') == 'sarki') {

        $Arama = mysql_query("SELECT * from " . $onek . "sarki where sarki_adi LIKE '" . get('ara') . "%'");

        if (mysql_num_rows($Arama) != 0) {
          $EslesenToplamSutun = mysql_num_rows($Arama);
    ?>

          <div class="container">
            <h4 class="text-center">
              Arama Sonuçları <span class="badge"><?php echo number_format($EslesenToplamSutun); ?></span> Söz Bulundu.
            </h4>

            <div class="col-md-1" style="display: block;"></div>
            <div class="col-md-10" style="display: block;">

              <?php
              while ($oku = mysql_fetch_assoc($Arama)) {
              ?>

                <ul class="list-group">
                  <li class="list-group-item">
                    <a href="index.php?sarki=<?php echo $oku['sarki_id']; ?>">
                      <?php echo $oku['sarki_sarkici']; ?> - <b><?php echo $oku['sarki_adi']; ?> </b>
                    </a>
                </ul>
                </li>


              <?php
              }
              ?>
            </div>
          </div>
          </div>
        <?php
        } else {
        ?>
          <div class="container">
            <div class="col-md-1" style="display: block;"></div>
            <div class="col-md-10" style="display: block;">
              <div class="alert alert-warning text-center" role="alert"> <strong>Eşleşen bir sonuç bulunamadı. </strong><img src="img/ikon/uzgun.png" width="25" /></div>
              </ul>
            </div>
          </div>
          </div>
          </div>
        <?php
        }
      } else if (get('tip') == 'sarkici') {
        //Düzelttiğim Alan
        $Sarkici = $_GET["sarkici"];
        $Arama = mysql_query("SELECT * from " . $onek . "sarki where sarki_sarkici LIKE '" . $Sarkici . "%'");

        if (mysql_num_rows($Arama) != 0) {
          $EslesenToplamSutun = mysql_num_rows($Arama);
        ?>

          <div class="container">
            <h4 class="text-center">
              Arama Sonuçları <span class="badge"><?php echo number_format($EslesenToplamSutun); ?></span> Söz Bulundu.
            </h4>

            <div class="col-md-1" style="display: block;"></div>
            <div class="col-md-10" style="display: block;">

              <?php
              while ($oku = mysql_fetch_assoc($Arama)) {
              ?>

                <ul class="list-group">
                  <li class="list-group-item">
                    <a href="index.php?sarki=<?php echo $oku['sarki_id']; ?>">
                      <b> <?php echo $oku['sarki_sarkici']; ?> </b> - <?php echo $oku['sarki_adi']; ?>
                    </a>
                </ul>
                </li>


              <?php
              }
              ?>
            </div>
          </div>
          </div>
        <?php
        } else {
        ?>
          <div class="container">
            <div class="col-md-1" style="display: block;"></div>
            <div class="col-md-10" style="display: block;">
              <div class="alert alert-warning text-center" role="alert"> <strong>Eşleşen bir sonuç bulunamadı. </strong><img src="img/ikon/uzgun.png" width="25" /></div>
              </ul>
            </div>
          </div>
          </div>
          </div>
        <?php
        }
      } else {
        $Arama = mysql_query("SELECT * from " . $onek . "sarki where sarki_adi LIKE '" . get('ara') . "%'");

        if (mysql_num_rows($Arama) != 0) {
          $EslesenToplamSutun = mysql_num_rows($Arama);
        ?>

          <div class="container">
            <h4 class="text-center">
              Arama Sonuçları <span class="badge"><?php echo number_format($EslesenToplamSutun); ?></span> Söz Bulundu.
            </h4>

            <div class="col-md-1" style="display: block;"></div>
            <div class="col-md-10" style="display: block;">

              <?php
              while ($oku = mysql_fetch_assoc($Arama)) {
              ?>

                <ul class="list-group">
                  <li class="list-group-item">
                    <a href="index.php?sarki=<?php echo $oku['sarki_id']; ?>">
                      <?php echo $oku['sarki_sarkici']; ?> - <b><?php echo $oku['sarki_adi']; ?> </b>
                    </a>
                </ul>
                </li>


              <?php
              }
              ?>
            </div>
          </div>
          </div>
        <?php
        } else {
        ?>
          <div class="container">
            <div class="col-md-1" style="display: block;"></div>
            <div class="col-md-10" style="display: block;">
              <div class="alert alert-warning text-center" role="alert"> <strong>Eşleşen bir sonuç bulunamadı. </strong><img src="img/ikon/uzgun.png" width="25" /></div>
              </ul>
            </div>
          </div>
          </div>
          </div>
      <?php
        }
      }

      ?>

      <?php
    } else {
      if (isset($_GET["sarki"])) {
        $Deger = $_GET["sarki"];
        $Sorgu = mysql_query("SELECT * from " . $onek . "sarki where sarki_id=" . $Deger);
        $Getir = mysql_fetch_assoc($Sorgu);
      ?>
        <div class="container">
          <h3 class="text-center">

            <?php echo $Getir['sarki_sarkici']; ?> - <?php echo $Getir['sarki_adi']; ?>

            </small>
          </h3>
          
          <div class="col-md-12" style="display: block;">

            <pre class="text-center"><?php echo $Getir['sarki_icerik']; ?></pre>

          </div>
        </div>
        </div>
    <?php
      } else {


        require_once('ensonkayitlar.php');
      }
    }
    //ARAMA EKRANI BITIŞ
    ?>



  <?php } ?>

  <!-- Footer -->

  <br>
  <br>

  </div>
  <div class="container">






    <div class="well well-sm text-center">
      <h6 class="text-center">
        <?php echo $sitealtaciklama ?> - <?php echo date('Y'); ?>
      </h6>
    </div>
  </div>
  <!-- Footer -->

</body>

</html>
