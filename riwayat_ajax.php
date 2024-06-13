<?php
$koneksi = mysqli_connect("localhost", "root", "", "db_kecanduan");

// Periksa apakah ada permintaan POST untuk tanggal, bulan, atau tahun
if (isset($_POST['tanggal'])) {
    $tanggal = $_POST['tanggal'];
    // Query untuk mendapatkan data laporan berdasarkan tanggal
    $query = "SELECT hasil.*, kecanduan.nama_kecanduan, kecanduan.deskripsi, kecanduan.solusi FROM hasil LEFT JOIN kecanduan ON hasil.id_kecanduan = kecanduan.id_kecanduan WHERE DATE(hasil.tanggal) = '$tanggal'";
} elseif (isset($_POST['bulan'])) {
    $bulan = $_POST['bulan'];
    // Query untuk mendapatkan data laporan berdasarkan bulan
    $query = "SELECT hasil.*, kecanduan.nama_kecanduan, kecanduan.deskripsi, kecanduan.solusi FROM hasil LEFT JOIN kecanduan ON hasil.id_kecanduan = kecanduan.id_kecanduan WHERE MONTH(hasil.tanggal) = '$bulan'";
} elseif (isset($_POST['tahun'])) {
    $tahun = $_POST['tahun'];
    // Query untuk mendapatkan data laporan berdasarkan tahun
    $query = "SELECT hasil.*, kecanduan.nama_kecanduan, kecanduan.deskripsi, kecanduan.solusi FROM hasil LEFT JOIN kecanduan ON hasil.id_kecanduan = kecanduan.id_kecanduan WHERE YEAR(hasil.tanggal) = '$tahun'";
}

$result = mysqli_query($koneksi, $query);

if (mysqli_num_rows($result) > 0) {
    // Tampilkan laporan dalam bentuk tabel
    echo '<div class="table-responsive">
            <table class="table table-bordered table-striped" id="table-datatable">
              <thead>
                <tr>
                <th width="50">No</th>
                <th>Tanggal</th>
                <th>Id Pasien</th>
                <th>Nama Pasien</th>
                <th width="50">Umur</th>
                <th>Tingkatan Kecanduan</th>                            
                <th width="300">Deskripsi</th>
                <th width="300">Solusi</th>
                </tr>
              </thead>
              <tbody>';
    $no = 1;
    while ($row = mysqli_fetch_array($result)) {
        echo '<tr>
                <td>' . $no++ . '</td>
                <td>' . $row['tanggal'] . '</td>
                <td>' . $row['id_pasien'] . '</td>
                <td>' . $row['username'] . '</td>
                <td>' . $row['umur'] . '</td>
                <td>' . $row['nama_kecanduan'] . '</td>
                <td>' . $row['deskripsi'] . '</td>
                <td>' . $row['solusi'] . '</td>
              </tr>';
    }
    echo '</tbody>
          </table>
          </div>';
} else {
    echo '<div class="alert alert-info text-center">Tidak ada data yang tersedia.</div>';
}

// Tutup koneksi database
mysqli_close($koneksi);
?>
