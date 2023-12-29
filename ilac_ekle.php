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
$errorMessage = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Formdan gelen verileri al
    $ilac_kodu = $_POST["ilac_kodu"];
    $ilac_adi = $_POST["ilac_adi"];
    $aciklama = $_POST["aciklama"];

    try {
        // PostgreSQL sorgusu: Ilac tablosuna veri ekleme
        $query = $db->prepare("INSERT INTO ilaclar ( ilac_adi, aciklama) VALUES ( ?, ?)");

        // Veri eklemek için bindParam kullanılıyor
        
        $query->bindParam(1, $ilac_adi);
        $query->bindParam(2, $aciklama);

        // Sorguyu çalıştır
        $query->execute();

        $successMessage = "İlaç başarıyla eklendi.";
    } catch (PDOException $e) {
        // Hata durumunda hata mesajını ekrana yazdır
        $errorMessage = "Hata: " . $e->getMessage();
    }
} else {
    // Yanlış bir şekilde sayfaya erişildiyse hata mesajı gönder
    $errorMessage = "Geçersiz istek.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>İlaç Ekle</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>İlaç Ekle</h2>

    <?php if ($successMessage): ?>
        <div class="alert alert-success" role="alert"><?= $successMessage ?></div>
        <a href="ilacBilgileri.php" class="btn btn-primary mt-3">İlaç Bilgilerine Geri Dön</a>
    <?php elseif ($errorMessage): ?>
        <div class="alert alert-danger" role="alert"><?= $errorMessage ?></div>
        <a href="ilacBilgileri.php" class="btn btn-danger mt-3">İlaç Bilgilerine Geri Dön</a>
    <?php endif; ?>
</div>

<!-- Bootstrap JS ve Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
