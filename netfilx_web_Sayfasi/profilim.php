<?php
    session_start();
    ob_start();
    include("db.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anasayfa</title>
    <link rel="stylesheet" href="profilim.css">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <script src="script.js"></script>
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
                <a href="yakin-zamanda-eklenenler.php">Yakın Zamanda Eklenenler</a>
                <a href="listem.php">Listem</a>
                <div class="cikis"> 
                <a href="cikis.php">
                        <i class="fa-solid fa-right-from-bracket"></i>
                </a>
                </div>
              
                <input type="text" name="search" class="search_input"> <button name="search_go">Ara</button>
                </div>
            </div>          
        </nav>
    </div>
    
    <?php
    $kullanicId = $_SESSION["user_id"];
    $sorgula = $db->prepare("SELECT * FROM uyeler WHERE id=?");
    $sorgula->execute([
        $kullanicId
    ]);
    $row = $sorgula->fetch(PDO::FETCH_ASSOC);

   
   ?>


    <div id="anaKataman">
        <form action="profilimiguncele.php" method="post">
            <h2>Profil Düzenleme</h2>

            <input type="text" name="update_user" placeholder="Adınız" value= "<?php echo $row["adi"]; ?>"> <br>
            <input type="text" name="update_lastname" placeholder="Soyadi" value= "<?php echo $row["soyadi"]; ?>"> > <br>
            <input type="text" name="update_email" placeholder="E-Mail veya Telefon"  value= " <?php echo $row["kullaniciadi"]; ?>"> > <br>
            <input type="text" name="update_sifre" placeholder="Sifre" value= "<?php echo ""; ?>"> <br>
            <input type="text" name="update_sifre_repeat" placeholder="Sifre Tekrar" value="<?php  echo " " ?>"> <br>
            <button type="submit" name="guncele_btn" class="guncele_btn">Güncele</button>
           
        
            <a href="#" class="yardım">Yardım İstermisiniz?</a>
            <div class="güvenlikBilgileri">Bu sayfa robot olmadığınızı kanıtlamak için Google reCAPTCHA tarafından
                korunuyor. <a href="#" class="dahafazlabilgi"> Daha fazlasını öğrenin.</a></div>

        </form>
    </div>

   
</body>
</html>