<?php
include('header.php');

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Aksiyon Movie</title>
        <link rel="stylesheet" href="css/aksiyonStyle.css">     
        <link rel="stylesheet" href="profilim.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="all.css">
        <link rel="stylesheet" href="all.min.css">

    </head>
<body>
    <div class="aksiyon_isim">Aksiyon Filmler</div>
        <?php
            $vericek = $db->query("SELECT * FROM action_movie ORDER BY id ASC LIMIT 20 ", PDO::FETCH_ASSOC);
            foreach($vericek as $aksiyon){
        ?>
                <div class="top_kapsama">
                    <div class="aksiyon_alanı">
                        <div class="kapsam">
                            <div class="filmalanı">
                            <?php  echo "<a href='film.php?id=".$aksiyon["id"]."'>" . $aksiyon['video'] ;"</a><br>"; ?> 
                            <div class="socaial_icon"><i class="fa-regular fa-thumbs-up"></i>
                             <button class="socaial_icons"><i class="fa-solid fa-bookmark"></i></button>
                             
                             </div>
                            </div>
                        </div> 
                    </div>
            </div>
        <?php
            }
        ?>
    
</body>
</html>