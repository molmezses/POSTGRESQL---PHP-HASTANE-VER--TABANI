<?php
// PostgreSQL veritabanı bağlantı bilgileri
$host = "localhost";
$port = "5432";
$dbname = "hastane";
$user = "postgres";
$password = "mmo12345";

// Form gönderildiğinde
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        // Formdan gelen verileri al
        $doktor_tc = $_POST['doktor_tc'];
        $doktor_adi = $_POST['doktor_adi'];
        $doktor_soyadi = $_POST['doktor_soyadi'];
        $doktor_brans = $_POST['doktor_brans'];
        $doktor_telefon = $_POST['doktor_telefon'];
        $oda_no = $_POST['oda_no'];

        // PostgreSQL veritabanına bağlan
        $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";
        $db = new PDO($dsn);

        // Hata raporlamasını etkinleştir
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Doktorlar tablosuna veri ekle
        $query = $db->prepare("INSERT INTO doktorlar 
                              (doktor_tc, doktor_adi, doktor_soyadi, doktor_brans, doktor_telefon, oda_no) 
                              VALUES (?, ?, ?, ?, ?, ?)");
        $query->execute([$doktor_tc, $doktor_adi, $doktor_soyadi, $doktor_brans, $doktor_telefon, $oda_no]);

        // Başarıyla eklendiğini belirten bir mesaj
        $successMessage = "Doktor başarıyla eklendi.";
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
    <title>Doktor Ekle</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Doktor Ekle</h2>

    <?php
    if (isset($successMessage)) {
        echo '<div class="alert alert-success" role="alert">' . $successMessage . '</div>';
    } elseif (isset($errorMessage)) {
        echo '<div class="alert alert-danger" role="alert">' . $errorMessage . '</div>';
    }
    ?>

    <a href="doktorBilgileri.php" class="btn btn-primary">Doktor Listesine Geri Dön</a>
</div>

<!-- Bootstrap JS ve Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
