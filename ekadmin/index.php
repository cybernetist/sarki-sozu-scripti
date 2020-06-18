<?php

session_start();

require 'database.php';

if( isset($_SESSION['user_id']) ){

	$records = $conn->prepare('SELECT id,email,password FROM users WHERE id = :id');
	$records->bindParam(':id', $_SESSION['user_id']);
	$records->execute();
	$results = $records->fetch(PDO::FETCH_ASSOC);

	$user = NULL;

	if( count($results) > 0){
		$user = $results;
	}

}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Yönetim Paneline Hoşgeldiniz</title>
	<link rel="stylesheet" type="text/css" href="ekadmin/assets/css/style.css">
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/stil.css" rel="stylesheet">
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
	<link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>




<?php if( !empty($user) ): ?>
    <!-- Menü -->

    <?php require_once('adminmenu.php'); ?>

    <!-- Menü Bitiş -->
        <h2 class="text-center">Yönetim Paneline Hoşgeldiniz</h2>
<div class="row text-center">
    <a href="sarkiekle.php"><button type="button" class="btn btn-primary btn-lg">Şarkı Ekle</button></a>
    <a href="sarkisil.php"><button type="button" class="btn btn-danger btn-lg">Şarkı Sil</button></a>

</div>

	<?php else: ?>
<div class="text-center">
		<h1 class="text-center" >Yönetim Paneli</h1>
    <a href="login.php"><button type="button" class="btn btn-primary btn-lg">Giriş Yap</button></a>
    <a href="../index.php"><button type="button" class="btn btn-danger btn-lg">Siteye Git</button></a>
</div>
	<?php endif; ?>

</body>
</html>