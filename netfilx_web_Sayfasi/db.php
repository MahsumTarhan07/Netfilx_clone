<?php
    try{
        $db = new PDO('mysql:host=localhost;dbname=netflix;charset=utf8','root','');
    }catch(PDOException $error){
        echo "Veritabanın Hatası Tekrar Denyiniz <br/>";
        echo "Hata Mesajı = " . $error->getMessage();
        die();
    }
    //FiltreGüvenliği
    function FiltreGüvenliği($db){
        $bosluk = trim($db); // Trim fonksiyonu bir string ifadenin başındaki ve sonundaki boşlukları siler
        $gelentag = strip_tags($bosluk); //Php'de değişkenlerimizin içinde ki html karakterlerini temizleyen 
        $karakter = htmlspecialchars($gelentag, ENT_QUOTES);  //karakterleri HTML öğeleri haline getirir %<'vb    //Çift ve tek tırnakları çevir
        $sonuc = $karakter;
        return $sonuc;
    }
        

    if(!$db){
        echo "Veritabanına Bağlanılmadı <br/>";
    }else{
        // echo "Bağlantı Sağlandı";
    }

?>