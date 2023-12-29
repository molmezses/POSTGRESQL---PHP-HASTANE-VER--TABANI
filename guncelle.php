

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
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>



<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="#">Hastane Veritabanı</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Hastabilgileri
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="hastaBilgileri.php">Hasta Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="hastaEkle.php">Hasta Bilgisi Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Oda Bilgileri
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="odaBilgileri.php">Oda Bilgileri</a>
            <a class="dropdown-item" href="odaEkle.php">Oda Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Hizmetli Bilgileri 
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="hizmetliBilgileri.php">Hizmitlli Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="hizmetli_ekle.php">Hizmetli Bilgisi Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Doktor Bilgileri 
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="doktorBilgileri.php">Doktor Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="doktorEkle.php">Doktor Bilgisi Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Maueyene Bilgileri 
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="muayeneBilgileri.php">Maueyene Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="muayeneEkle.php">Muayene Bilgisi Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Reçete Bilgileri 
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="receteBilgileri.php">Reçete Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="receteEkle.php">Reçete Bilgisi Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Hemsire Bilgileri 
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="hemsireBilgileri.php">Hemsire Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="hemsireEkle.php">Hemsire Bilgisi Ekle</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            İlaç Bilgileri 
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- İlgili sayfaya yönlendiren linkler eklenecek -->
            <a class="dropdown-item" href="ilacBilgileri.php">İlaç Bilgileri Görüntüle</a>
            <a class="dropdown-item" href="ilacEkle.php">İlaç Bilgisi Ekle</a>
          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- Main Content -->
<?php
                // Veritabanı bağlantısı
                $host = "localhost";
                $port = "5432";
                $dbname = "hastane";
                $user = "postgres";
                $password = "mmo12345";

                $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";

                try {
                    $db = new PDO($dsn);
                } catch (PDOException $e) {
                    die("Bağlantı hatası: " . $e->getMessage());
                }

                // Hasta bilgilerini çekme sorgusu
                $sqlHasta = "SELECT * FROM hasta";
                $resultHasta = $db->query($sqlHasta);

                // Çift satırları farklı bir renkte göstermek için kullanılacak değişken
                $even = true;

                foreach ($resultHasta as $rowHasta) {
                    $bgColor = $even ? 'lightblue' : 'lightgreen';
                    
                    $gid = $rowHasta['hasta_id'];
                    $hastatc = $rowHasta['hasta_tc'];

                    $hasta_id = $_GET['hasta_id'];
                    $hasta_adi = $rowHasta['hasta_adi'];
                    $hasta_soyadi = $rowHasta['hasta_soyadi'];
                    $hasta_telefon = $rowHasta['hasta_telefon'];
                    $klinik = $rowHasta['klinik'];
                    $hasta_adres = $rowHasta['hasta_adres'];
                    $randevu_gun = $rowHasta['randevu_gun'];
                    $randevu_saat = $rowHasta['randevu_saat'];
                    $taburcu_tarih = $rowHasta['taburcu_tarih'];
                    $hemsire_id = $rowHasta['hemsire_id'];


                    if($gid == $hasta_id ){
                      
                      echo "<div class='container mt-4'>
                      <h2>Hasta Güncelle</h2>
                      <form action='hasta_guncelle.php' method='post'>
                        <div class='mb-3'>
                          <label for='hasta_tc' class='form-label'>Hasta TC</label>
                          <input type='text' class='form-control' id='hasta_tc' name='hasta_tc' value='$hastatc' required>
                        </div>
                        
                        <input type='hidden' name='hasta_id' value='$gid'>

                        
                        <div class='mb-3'>
                          <label for='hasta_adi' class='form-label'>Hasta Adı</label>
                          <input type='text' class='form-control' id='hasta_adi' name='hasta_adi' value='$hasta_adi' required>
                        </div>
                        <div class='mb-3'>
                          <label for='hasta_soyadi' class='form-label'>Hasta Soyadı</label>
                          <input type='text' class='form-control' id='hasta_soyadi' name='hasta_soyadi'  value='$hasta_soyadi' required>
                        </div>
                        <div class='mb-3'>
                          <label for='hasta_telefon' class='form-label'>Hasta Telefon</label>
                          <input type='tel' class='form-control' id='hasta_telefon' name='hasta_telefon' value='$hasta_telefon'  required>
                        </div>
                        <div class='mb-3'>
                          <label for='klinik' class='form-label'>Klinik</label>
                          <input type='text' class='form-control' id='klinik' name='klinik' value='$klinik'  required>
                        </div>
                        <div class='mb-3'>
                          <label for='hasta_adres' class='form-label'>Hasta Adres</label>
                          <input type='text' class='form-control' id='hasta_adres' name='hasta_adres'  value='$hasta_adres' required>
                        </div>
                        <div class='mb-3'>
                          <label for='randevu_gun' class='form-label'>Randevu Gün</label>
                          <input type='text' class='form-control' id='randevu_gun' name='randevu_gun'  value='$randevu_gun' required>
                        </div>
                        <div class='mb-3'>
                          <label for='randevu_saat' class='form-label'>Randevu Saat</label>
                          <input type='text' class='form-control' id='randevu_saat' name='randevu_saat'  value='$randevu_saat' required>
                        </div>
                        <div class='mb-3'>
                          <label for='taburcu_tarih' class='form-label'>Taburcu Tarih</label>
                          <input type='text' class='form-control' id='taburcu_tarih' name='taburcu_tarih'  value='$taburcu_tarih' required>
                        </div>
                        <div class='mb-3'>
                          <label for='taburcu_tarih' class='form-label'>Sorumlu Hemsire ID'si </label>
                          <input type='text' class='form-control' id='hemsire_id' name='hemsire_id' value='$hemsire_id'  required>
                        </div>
                        <button type='submit' class='btn btn-primary'>Hasta Güncelle</button>
                      </form>
                      </div>
                      ";
                    }



                    


                   
                    

                    echo "</tr>";
                    $even = !$even; // Satır rengini değiştir
                }
                ?>


<!-- Footer -->
<footer class="bg-dark text-light text-center py-3">
  <p>&copy; 2023 Hastane Veritabanı | Mustafa ölmezses</p>
</footer>

<!-- Bootstrap JS ve Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
