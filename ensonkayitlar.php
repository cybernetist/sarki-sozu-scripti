<br>
    <div class="container ">
      <div class="row text-center">
        <div class="col-md-12" style="display: block;">
          <h4 class="text-center">
            En Son Eklenen 10 Şarkı Sözü
          </h4>
          <ul class="list-group">
<?php
$sonuc = mysql_query("SELECT * from ".$onek."sarki ORDER BY sarki_id DESC limit 10");

if(mysql_num_rows($sonuc)!=0)
{
    while($oku = mysql_fetch_assoc($sonuc))
    {
    ?>
                <a href="index.php?sarki=<?php echo $oku['sarki_id']; ?>">
          <li class="list-group-item">
           <?php echo $oku['sarki_sarkici']; ?> - <?php echo $oku['sarki_adi']; ?> 
            </li>
          </a>
          <br>
  <?php
    }
}
?>


  
          </ul>
        </div>

      </div>