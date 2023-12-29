<?php
// PostgreSQL veritabanı bağlantı bilgileri
$host = "localhost";
$port = "5432";
$dbname = "hastane"; // Kullanacağınız veritabanı adını buraya ekleyin
$user = "postgres";
$password = "mmo12345";

// Form gönderildiğinde
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        // Formdan gelen verileri al
        $ilac_kodu = $_POST['ilac_kodu'];
        $recete_sahibi_hasta_tc = $_POST['recete_sahibi_hasta_tc'];

        // PostgreSQL veritabanına bağlan
        $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";
        $db = new PDO($dsn);

        // Hata raporlamasını etkinleştir
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // recete tablosuna veri ekle
        $query = $db->prepare("INSERT INTO receteler (ilac_kodu, recete_sahibi_hasta_tc) VALUES (?, ?)");
        $query->execute([$ilac_kodu, $recete_sahibi_hasta_tc]);

        // Başarıyla eklendiğini belirten bir mesaj
        $successMessage = "Reçete başarıyla eklendi.";
    } catch (PDOException $e) {
        // Hata durumunda hata mesajını göster
        $errorMessage = "Hata: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reçete Ekle</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Reçete Ekle</h2>

    <?php
    if (isset($successMessage)) {
        echo '<div class="alert alert-success" role="alert">' . $successMessage . '</div>';
    } elseif (isset($errorMessage)) {
        echo '<div class="alert alert-danger" role="alert">' . $errorMessage . '</div>';
    }
    ?>

    <a href="receteBilgileri.php" class="btn btn-primary">Reçete Bilgilerine Geri Dön</a>
</div>

<!-- Bootstrap JS ve Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
