<?php
session_start();
ob_start();
include("db.php");


/****************  Giriş Sayafa kontolü    ************ */

function girisbasarili(){
    header("location:anasayfa.php?durum=basariligiris=true");
    header('Refresh:0;anasayfa.php'); 
}

function girisbasarisiz(){
    header("location:giris.php?durum=basarisizgiris=false");
    header('Refresh:0;giris.php'); 
    exit();
}

 if(isset($_POST["girisyap_btn"])){
    $giris_kullanici_adi = $_POST["giris_kullaniciadiniz"];
    $giris_kullanici_sifre = md5($_POST["giris_sifre"]);
    $giris_kriptolama = hash('sha256', $giris_kullanici_sifre); // //anahtar hash fonksiyonu ile sha256 algoritmasi ile sifreleniyor

    $giris_kullaniciSorgula = $db->prepare("SELECT * FROM uyeler WHERE kullaniciadi=:kullaniciadi and sifre=:sifre LIMIT 1");
    $giris_kullaniciSorgula->execute([
        'kullaniciadi' => $giris_kullanici_adi,
        'sifre' => $giris_kriptolama
    ]);

    $kullanicisay = $giris_kullaniciSorgula->rowCount(); //kullanici sayısı sorgulama
    
    $kullanıcıSession = $giris_kullaniciSorgula->fetch(); 

    if($kullanicisay==1){
        $_SESSION["user_id"] = $kullanıcıSession["id"]; // kullanici ID değerin cektik
        $_SESSION['user_name'] = $kullanıcıSession['adi'];
	
            echo "<script>alert('Giriş Başarılı, Anasayfa Sayfasına Yönlendiriliyorsunuz');</script>";
            girisbasarili();
            exit();
        }else{
            girisbasarisiz();
            exit();
        }

  }

  


?>






