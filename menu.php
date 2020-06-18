<?php require_once('sistem/fonksiyon.php'); ?>

<nav class="navbar navbar-default">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo $siteurl; ?>"><?php echo $siteadi; ?></a>
    </div>

  
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Ana Sayfa <span class="sr-only">(current)</span></a></li>

      </ul>

      <div class="hidden-xs">
      <form action="" method="get" class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" name="ara" class="form-control menuara" placeholder="Ara">
        </div>
      <div class="form-group tip">
                    <select class="form-control s-select"  name="tip">
                    <option value="sarki">Şarkı</option>
                    <option value="sarkici">Şarkıcı</option>
                    </select>
              </span>
        </div>

        <button type="submit" class="btn btn-default">Ara</button>
      </form>
    </div>
        <ul class="nav navbar-nav" style="float: right">
            <li><a href="ekadmin">Panel Girişi <span class="sr-only">(current)</span></a></li>

        </ul>
      
    </div>
  </div>
</nav>