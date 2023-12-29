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
<div class="container mt-4">
<h2>Hasta Bilgileri</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Hasta ID</th>
                    <th>Hasta TC</th>
                    <th>Hasta Adı</th>
                    <th>Hasta Soyadı</th>
                    <th>Hasta Telefon</th>
                    <th>Klinik</th>
                    <th>Hasta Adres</th>
                    <th>Randevu Gün</th>
                    <th>Randevu Saat</th>
                    <th>Taburcu Tarihi</th>
                    <th>Sorumlu Hemsire id</th>
                    <th>Hasta Bilgisini Sil</th>
                    <th>Hasta Bilgilerini Güncelle</th>


                </tr>
            </thead>
            <tbody>
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
                    echo "<tr style='background-color: $bgColor;'>";
                    echo "<td>{$rowHasta['hasta_id']}</td>";
                    echo "<td>{$rowHasta['hasta_tc']}</td>";
                    echo "<td>{$rowHasta['hasta_adi']}</td>";
                    echo "<td>{$rowHasta['hasta_soyadi']}</td>";
                    echo "<td>{$rowHasta['hasta_telefon']}</td>";
                    echo "<td>{$rowHasta['klinik']}</td>";
                    echo "<td>{$rowHasta['hasta_adres']}</td>";
                    echo "<td>{$rowHasta['randevu_gun']}</td>";
                    echo "<td>{$rowHasta['randevu_saat']}</td>";
                    echo "<td>{$rowHasta['taburcu_tarih']}</td>";
                    echo "<td>{$rowHasta['hemsire_id']}</td>";
                    $gid = $rowHasta['hasta_id'];
                    echo "
                    <td>
                        <a href='sil.php?hasta_id=<?php 
                        echo  {$rowHasta['hasta_id']}; ?>' 
                        class='btn btn-danger'>Sil</a>
                    </td>
                    ";

                    

                    echo "
                    <td>
                        <a href='guncelle.php?hasta_id={$rowHasta['hasta_id']}' class='btn btn-warning'>Güncelle</a>
                    </td>
                ";
                    


                   
                    

                    echo "</tr>";
                    $even = !$even; // Satır rengini değiştir
                }
                ?>
            </tbody>
        </table>
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