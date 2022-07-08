<?php
    require("giris_kontrol.php");
/*
    // Günceleme İşelmei calışıyor
    if(isset($_POST["guncele-btn"])){
        $user_id = $_SESSION["user_id"];

        $kullanici = $_POST["kullaniciadi"];
        $sifreBir = $_POST["sifre"];
        $sifreTekrar = $_POST["tekrarsifre"];

        if($sifreBir==$sifreTekrar){
            // $update = $db->prepare("UPDATE uyeler SET kullaniciadi= ? , sifre=? , sifretekrar=? WHERE id=?");
            $KayıtGünceleme = $db->query("UPDATE uyeler SET kullaniciadi='$kullanici',sifre='$sifreBir',sifretekrar='$sifreTekrar' WHERE id= $user_id");
            /*
            $sonuc = execute([
                $kullanici,
                $sifreBir,
                $sifreTekrar,
                $user_id
            ]);

            if($KayıtGünceleme){
                echo "Kayit Günceleme Başarılı";
            }
        }
        }
*/

        if(isset($_POST["guncele_btn"])){

            $user_id = $_SESSION["user_id"];

            $name = $_POST["update_user"];
            $lastname =$_POST["update_lastname"];
            $email =$_POST["update_email"];
            $password =$_POST["update_sifre"];
            $repeat_password =$_POST["update_sifre_repeat"];

            try{
                $update = "UPDATE uyeler SET  adi=:adi , soyadi=:soyadi , kullaniciadi=:kullaniciadi, sifre=:sifre, sifretekrar=:sifretekrar WHERE id=:id LIMIT 1 ";
                $veritabanıkontrol = $db->prepare($update);

                $veri = [
                    'adi' =>$name,
                    'soyadi' => $lastname,
                    'kullaniciadi' => $email,
                    'sifre'=> $password,
                    'sifretekrar'=> $repeat_password,
                    'id'=> $user_id

                ];

                $update_execute = $veritabanıkontrol->execute($veri);

                if($update_execute){
                    header("location:profilim.php?gunceleme-basarili=true");
                    echo " <script>
                            uyarı();
                    </script>";
                    exit();
                   
                }else{
                    header("location:profilim.php?guncelem-başarisiz=false");
                    exit();
                }


            }catch(PDOException $error){
                echo "Hata Mesajı :" .  $error->getMessage();
            }
    
        }
?>



