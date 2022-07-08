<?php
include('db.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kayit Ol</title>
    <link rel="stylesheet" href="css/kayitol.css">
    <script src="script.js"></script>
</head>
<body>
    <div id="anaKataman"> 
    <form action="kayitolbackend.php" method="post">
        <h2>KAYİT OL</h2>
        <input type="text" name="k_adi" required placeholder="Adınız"> <br>
        <input type="text" name="k_soyadi" required placeholder="Soyadınız"> <br>
        <input type="text" name="yeniuyeadi" required placeholder="Gmail veya Telefon Numaranız"> <br>
        <input type="password" name="uyesifre" id="" required placeholder="Sifre"> <br>
        <button type="submit" name="uye_ekle_btn"  class="giris_btn" onclick="kayitol()" >Kayit Ol</button>
        <p id="beniHatirlaText"><input type="checkbox" name="beniHatirla" id="benihatirla"> Beni Hatırla</p>
        <a href="#yardım" class="yardım">Yardım İstermisiniz?</a>

        <div class="güvenlikBilgileri"> Bu sayfa robot olmadığınızı kanıtlamak için Google reCAPTCHA tarafından korunuyor. <a href="#" class="dahafazlabilgi"> Daha fazlasını öğrenin.</a></div>
    </form>
</div>

</body>
</html>