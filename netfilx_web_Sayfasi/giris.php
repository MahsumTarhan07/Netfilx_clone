<?php
session_start();
ob_start();

/*
if(!isset($_SESSION['login']) || $_SESSION['login']==false){
    header('Location:giris.html');
}
*/
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giriş Yap</title>
    <link rel="stylesheet" href="css/giris.css">
    <script src="script.js"></script>

   
</head>

<body> 
    <div id="anaKataman">
        <form action="giris_kontrol.php" method="post">
            <h2>Giriş Yap</h2>
            <input type="text" name="giris_kullaniciadiniz" placeholder="Uye Adınız"> <br>
            <input type="password" name="giris_sifre" id="" placeholder="Sifre"> <br>
            <button type="submit" name="girisyap_btn" class="giris_btn" onclick="hosgeldiniz()">Giris Yap</button>


            <p id="beniHatirlaText"><input type="checkbox" name="beniHatirla" id="benihatirla"> Beni Hatırla</p>
            <a href="#" class="yardım">Yardım İstermisiniz?</a>
            <div class="kayitOl"><a href="kayitol.php"> Netflix'e katılmak ister misiniz? </a> Şimdi kaydolun.</div>
            <div class="güvenlikBilgileri">Bu sayfa robot olmadığınızı kanıtlamak için Google reCAPTCHA tarafındankorunuyor. 
            <a href="#dahafazlabilgi" class="dahafazlabilgi"> Daha fazlasını öğrenin.</a></div>

        </form>
    </div>

    <script>
        function giris(){
            alert("Sayın Kullanıcımız Siteye Hoşgeldiniz");
        }
    </script>

</body>

</html>