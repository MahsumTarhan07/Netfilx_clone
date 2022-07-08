<?php

include("anasayfa.php");
print_r(error_get_last());

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anasayfa</title>
    <link rel="stylesheet" href="css/anasayfaduzenleme.css">
    <link rel="stylesheet" href="css/filmStil.css">
    <link rel="stylesheet" href="profilim.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="all.css">
    <link rel="stylesheet" href="all.min.css">
    <script src="script.js"></script>
    <script src="appJs/app.js"></script>

    <style>
          .name{
            font-size:17px;
            color:#fff;
            margin:15px;
        }
    </style>
   
</head>
<body>
    <div id="menuKapsama">
        <nav class="menualani">
            <div class="netflix">
                <a href="anasayfa.php">NETFLİX</a>
            </div>
            <div class="menu">
                <a href="anasayfa.php">Anasayfa</a>
                <a href="dizi.php">Diziler</a>
                <a href="film.php">Film</a>
                <a href="yakin-zamanda-eklenenler.php">Yakın Zamanda Ekleneler</a>
                <a href="#">Listem</a>
                <input type="text" name="search"> <button name="search_go"><i class="fa-solid fa-magnifying-glass"></i></button>

               

                <div class="menuiki">
                    <div class="profilim">
                        <a href="#"><i class="fa-solid fa-bell"></i></a>
                    </div>
                    <a href="">
                         <i class="fa-solid fa-bell-plus"></i>
                    </a>
                    <div class="profilim">
                        <a href="profilim.php">
                        <i class="fa-solid fa-user"></i>
                      </a>
                    </div> 
                    <a href="cikis.php" <?php echo"onclick(cikisyapıldı)"; ?>>
                    <i class="fa-solid fa-right-from-bracket"></i></a>
                </div>
              
            </div>          
        </nav>
    </div>

     
    <!--Kullanici Session İşlemleri -->
  <!--   <div class="name">Kullanici ID Değeriniz <?php /* echo $_SESSION['user_id']; */ ?> </div> -->
  <!--    <div class="name">Merhabalar  <?php /* echo $_SESSION['user_name']; */ ?> Hosgeldiniz</div> -->
 
    

    </body>
</html>