<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php

// PostgreSQL veritabanı bağlantı bilgileri
$host = "localhost";
$port = "5432";
$dbname = "hastane";
$user = "postgres";
$password = "mmo12345";

// PostgreSQL veritabanına bağlan
$dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";
$db = new PDO($dsn);

// Hata raporlamasını etkinleştir
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Formdan gelen verileri al
    $oda_no = $_POST["oda_no"];
    $dahili_no = $_POST["dahili_no"];
    $gorevli_id = $_POST["gorevli_id"];
    $hasta_id = $_POST["hasta_id"];



    try {
        // PostgreSQL sorgusu: Odalar tablosuna veri ekleme
        $query = $db->prepare("INSERT INTO odalar 
                                (oda_no, dahili_no,gorevli_id,hasta_id) 
                                VALUES 
                                (?, ? , ?,?)");

        // Veri eklemek için bindParam kullanılıyor
        $query->bindParam(1, $oda_no);
        $query->bindParam(2, $dahili_no);
        $query->bindParam(3, $gorevli_id);
        $query->bindParam(4, $hasta_id);


        // Sorguyu çalıştır
        $query->execute();

        echo "Veri başarıyla eklendi.";
    } catch (PDOException $e) {
        // Hata durumunda hata mesajını ekrana yazdır
        echo "Hata: " . $e->getMessage();
    }
} else {
    // Yanlış bir şekilde sayfaya erişildiyse hata mesajı gönder
    echo "Geçersiz istek.";
}

?>

    
</body>
</html>