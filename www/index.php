<?php
$conn = new mysqli("db", "root", getenv('MYSQL_ROOT_PASSWORD'), "mon_site");

if ($conn->connect_error) {
  die("Erreur de connexion : " . $conn->connect_error);
}

$result = $conn->query("SELECT * FROM musiques");

if (!$result) {
  die("Erreur SQL : " . $conn->error);
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DEADWAX</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>

<header class="hero">
  <div class="hero-tag">Sélection musicale</div>
  <h1>DEADWAX</h1>
  <p>Un carnet de bord sonore. Les pépites qu'on trouve au fin fond de Youtube et qu'on veut plus jamais perdre.</p>
</header>

<main class="container">

  <h2 class="section-title">Mes pepites</h2>

  <div class="grid">

    <?php $i = 1; while($row = $result->fetch_assoc()) { ?>

      <div class="card">
        <div class="card-number"><?php echo str_pad($i, 2, '0', STR_PAD_LEFT); ?></div>
        <h3><?php echo htmlspecialchars($row["titre"]); ?></h3>
        <p><?php echo htmlspecialchars($row["artiste"]); ?></p>
        <a href="<?php echo htmlspecialchars($row["youtube_url"]); ?>" target="_blank">
          Écouter
        </a>
      </div>

    <?php $i++; } ?>

  </div>

</main>

<footer>
  <span>DEADWAX</span>
  <p>© 2026 — Fait avec du son</p>
</footer>

</body>
</html>

