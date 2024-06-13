<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Laporan Rekam Medis</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    h2 {
      text-align: center;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    table, th, td {
      border: 1px solid black;
    }
    th, td {
      padding: 8px;
      text-align: left;
    }
  </style>
</head>
<body>

  <h2>Laporan Rekam Medis</h2>

  <?php
  // Query untuk mengambil hasil konsultasi (sesuaikan dengan struktur database Anda)
  $query = "SELECT * FROM hasil_konsultasi";
  $result = mysqli_query($con, $query);
  ?>

  <table>
    <tr>
      <th>ID</th>
      <th>Username</th>
      <th>Tanggal</th>
      <th>Penyakit Hasil</th>
      <th>Deskripsi</th>
      <th>Solusi</th>
    </tr>
    <?php
    while ($row = mysqli_fetch_assoc($result)) {
      echo '<tr>';
      echo '<td>' . $row['id'] . '</td>';
      echo '<td>' . $row['username'] . '</td>';
      echo '<td>' . $row['tanggal'] . '</td>';
      echo '<td>' . $row['id_penyakit'] . '</td>';
      echo '<td>' . $row['deskripsi'] . '</td>';
      echo '<td>' . $row['solusi'] . '</td>';
      echo '</tr>';
    }
    ?>
  </table>

</body>
</html>
