

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
<div class="container mt-5">
  <h2>Oda Ekle</h2>
  <form action="oda_ekle.php" method="post">
    <div class="mb-3">
      <label for="oda_no" class="form-label">Oda Numarası</label>
      <input type="text" class="form-control" id="oda_no" name="oda_no" required>
    </div>
    <div class="mb-3">
      <label for="dahili_no" class="form-label">Dahili Numara</label>
      <input type="text" class="form-control" id="dahili_no" name="dahili_no" required>
    </div>
    <div class="mb-3">
      <label for="dahili_no" class="form-label"> Gorevli ID</label>
      <input type="text" class="form-control" id="gorevli_id" name="gorevli_id" required>
    </div>
    <div class="mb-3">
      <label for="dahili_no" class="form-label"> Hasta ID</label>
      <input type="text" class="form-control" id="hasta_id" name="hasta_id" required>
    </div>
    <button type="submit" class="btn btn-primary">Oda Ekle</button>
  </form>
</div>



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

