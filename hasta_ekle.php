<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hasta Ekle</title>
</head>
<body>

<div style="text-align: center; margin-top: 20px;">

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

    $successMessage = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Formdan gelen verileri al
        $hasta_tc = $_POST["hasta_tc"];
        $hasta_adi = $_POST["hasta_adi"];
        $hasta_soyadi = $_POST["hasta_soyadi"];
        $hasta_telefon = $_POST["hasta_telefon"];
        $klinik = $_POST["klinik"];
        $hasta_adres = $_POST["hasta_adres"];
        $randevu_gun = $_POST["randevu_gun"];
        $randevu_saat = $_POST["randevu_saat"];
        $taburcu_tarih = $_POST["taburcu_tarih"];
        $hemsire_id = $_POST["hemsire_id"];


        try {
            // PostgreSQL sorgusu: Hastane tablosuna veri ekleme
            $query = $db->prepare("INSERT INTO hasta 
                                    (hasta_tc, hasta_adi, hasta_soyadi, hasta_telefon, klinik, 
                                    hasta_adres, randevu_gun, randevu_saat, taburcu_tarih ,hemsire_id) 
                                    VALUES 
                                    (?, ?, ?, ?, ?, ?, ?, ?, ? ,? )");

            // Veri eklemek için bindParam kullanılıyor
            $query->bindParam(1, $hasta_tc);
            $query->bindParam(2, $hasta_adi);
            $query->bindParam(3, $hasta_soyadi);
            $query->bindParam(4, $hasta_telefon);
            $query->bindParam(5, $klinik);
            $query->bindParam(6, $hasta_adres);
            $query->bindParam(7, $randevu_gun);
            $query->bindParam(8, $randevu_saat);
            $query->bindParam(9, $taburcu_tarih);
            $query->bindParam(10, $hemsire_id);

            // Sorguyu çalıştır
            $query->execute();

            $successMessage = "Hasta bilgisi başarıyla eklendi.";
        } catch (PDOException $e) {
            // Hata durumunda hata mesajını ekrana yazdır
            echo "Hata: " . $e->getMessage();
        }
    } else {
        // Yanlış bir şekilde sayfaya erişildiyse hata mesajı gönder
        echo "Geçersiz istek.";
    }
    ?>

    <?php if ($successMessage): ?>
        <p style="color: green; font-size: 18px;"><?= $successMessage ?></p>
        <a href="hastaBilgileri.php" style="text-decoration: none;">
            <button style="padding: 10px 20px; font-size: 16px;">Hasta Bilgilerine Geri Dön</button>
        </a>
    <?php endif; ?>
</div>

</body>
</html>
