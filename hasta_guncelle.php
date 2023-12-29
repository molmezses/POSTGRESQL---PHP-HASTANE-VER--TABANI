<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hastane Veritabanı</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="#">Hastane Veritabanı</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <!-- Diğer menü öğeleri buraya gelecek -->
      </ul>
    </div>
  </div>
</nav>

<!-- Main Content -->
<div class="container mt-4">
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

try {
    $host = "localhost";
    $port = "5432";
    $dbname = "hastane";
    $user = "postgres";
    $password = "mmo12345";

    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";

    $db = new PDO($dsn);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        try {
            // Formdan gelen hasta_id değerini alma
            $hasta_id = $_POST['hasta_id'];

            // Diğer formdan gelen değerleri alma
            $hasta_tc = $_POST['hasta_tc'];
            $hasta_adi = $_POST['hasta_adi'];
            $hasta_soyadi = $_POST['hasta_soyadi'];
            $hasta_telefon = $_POST['hasta_telefon'];
            $klinik = $_POST['klinik'];
            $hasta_adres = $_POST['hasta_adres'];
            $randevu_gun = $_POST['randevu_gun'];
            $randevu_saat = $_POST['randevu_saat'];
            $taburcu_tarih = $_POST['taburcu_tarih'];
            $hemsire_id = $_POST['hemsire_id'];

            // Güncelleme sorgusu
            $sqlUpdate = "UPDATE hasta SET 
                hasta_tc = :hasta_tc,
                hasta_adi = :hasta_adi,
                hasta_soyadi = :hasta_soyadi,
                hasta_telefon = :hasta_telefon,
                klinik = :klinik,
                hasta_adres = :hasta_adres,
                randevu_gun = :randevu_gun,
                randevu_saat = :randevu_saat,
                taburcu_tarih = :taburcu_tarih,
                hemsire_id = :hemsire_id
                WHERE hasta_id = :hasta_id";

            $stmt = $db->prepare($sqlUpdate);

            // Değişkenleri bağlama
            $stmt->bindParam(':hasta_id', $hasta_id);
            $stmt->bindParam(':hasta_tc', $hasta_tc);
            $stmt->bindParam(':hasta_adi', $hasta_adi);
            $stmt->bindParam(':hasta_soyadi', $hasta_soyadi);
            $stmt->bindParam(':hasta_telefon', $hasta_telefon);
            $stmt->bindParam(':klinik', $klinik);
            $stmt->bindParam(':hasta_adres', $hasta_adres);
            $stmt->bindParam(':randevu_gun', $randevu_gun);
            $stmt->bindParam(':randevu_saat', $randevu_saat);
            $stmt->bindParam(':taburcu_tarih', $taburcu_tarih);
            $stmt->bindParam(':hemsire_id', $hemsire_id);

            // Sorguyu çalıştırma
            $stmt->execute();

            // Başarı mesajını gösterme
            echo '<div class="alert alert-success" role="alert">Hasta başarıyla güncellendi.</div>';
            echo '<a href="hastaBilgileri.php" class="btn btn-success">Hasta Bilgilerine Geri Dön</a>';

        } catch (PDOException $e) {
            // Hata durumunda hatayı gösterme
            echo '<div class="alert alert-danger" role="alert">Hata: ' . $e->getMessage() . '</div>';
        }
    }
} catch (PDOException $e) {
    // Bağlantı hatası durumunda hatayı gösterme
    echo '<div class="alert alert-danger" role="alert">Bağlantı hatası: ' . $e->getMessage() . '</div>';
}
?>
</div>

<!-- Footer -->
<footer class="bg-dark text-light text-center py-3">
  <p>&copy; 2023 Hastane Veritabanı | Mustafa ölmezses</p>
</footer>

<!-- Bootstrap JS ve Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
