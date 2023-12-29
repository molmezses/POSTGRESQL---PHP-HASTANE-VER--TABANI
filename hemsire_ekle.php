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
        $hemsire_tc = $_POST['hemsire_tc'];
        $hemsire_adi = $_POST['hemsire_adi'];
        $hemsire_soyadi = $_POST['hemsire_soyadi'];
        $hemsire_adres = $_POST['hemsire_adres'];
        $hemsire_telefon = $_POST['hemsire_telefon'];

        // PostgreSQL veritabanına bağlan
        $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";
        $db = new PDO($dsn);

        // Hata raporlamasını etkinleştir
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // hemsire tablosuna veri ekle
        $query = $db->prepare("INSERT INTO hemsire (hemsire_tc, hemsire_adi, hemsire_soyadi, hemsire_adres, hemsire_telefon) 
                              VALUES (?, ?, ?, ?, ?)");
        $query->execute([$hemsire_tc, $hemsire_adi, $hemsire_soyadi, $hemsire_adres, $hemsire_telefon]);

        // Başarıyla eklendiğini belirten bir mesaj
        $successMessage = "Hemşire başarıyla eklendi.";
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
    <title>Hemşire Ekle</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Hemşire Ekle</h2>

    <?php
    if (isset($successMessage)) {
        echo '<div class="alert alert-success" role="alert">' . $successMessage . '</div>';
    } elseif (isset($errorMessage)) {
        echo '<div class="alert alert-danger" role="alert">' . $errorMessage . '</div>';
    }
    ?>

    <a href="hemsireBilgileri.php" class="btn btn-primary">Hemşire Listesine Geri Dön</a>
</div>

<!-- Bootstrap JS ve Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
