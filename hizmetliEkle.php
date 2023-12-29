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
    $tc = $_POST["tc"];
    $hizmetli_adi = $_POST["hizmetli_adi"];
    $hizmetli_soyadi = $_POST["hizmetli_soyadi"];

    try {
        // PostgreSQL sorgusu: Hizmetli tablosuna veri ekleme
        $query = $db->prepare("INSERT INTO hizmetli 
                                (tc, hizmetli_adi, hizmetli_soyadi) 
                                VALUES 
                                (?, ?, ?)");

        // Veri eklemek için bindParam kullanılıyor
        $query->bindParam(1, $tc);
        $query->bindParam(2, $hizmetli_adi);
        $query->bindParam(3, $hizmetli_soyadi);

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
