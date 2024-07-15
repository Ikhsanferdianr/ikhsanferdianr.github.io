<?php
// Include konfigurasi koneksi ke database dan fungsi-fungsi yang diperlukan
include('koneksi.php'); // Sesuaikan dengan nama file koneksi Anda

// Ambil data pasien dari sesi atau parameter URL, sesuaikan dengan struktur Anda
$id_pasien = isset($_SESSION['LOG_USER']) ? $_SESSION['LOG_USER'] : '';

// Query untuk mendapatkan riwayat konsultasi pasien dengan informasi nama kecanduan
$query_riwayat = "
    SELECT hasil.*, kecanduan.nama_kecanduan
    FROM hasil
    LEFT JOIN kecanduan ON hasil.id_kecanduan = kecanduan.id_kecanduan
    WHERE hasil.id_pasien = '$id_pasien'
    ORDER BY hasil.tanggal DESC";

$result_riwayat = mysqli_query($con, $query_riwayat);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Riwayat Konsultasi</title>

    <!-- Tambahkan aturan gaya CSS di sini -->
    <style>
        body {
            color: black;
            /* Warna teks menjadi hitam */
        }

        /* Jika Anda ingin mengubah warna teks tabel, Anda bisa menyesuaikan selektor berikut */
        #dataTables1 {
            color: black;
        }
    </style>
</head>

<body>
    <h3 align="center">Riwayat Konsultasi</h3><br>
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered" id="dataTables1">
                    <thead>
                        <tr>
                            <th width="50">No</th>
                            <th>Tanggal</th>
                            <th>Nama Pasien</th>
                            <th width="50">Umur</th>
                            <th>Tingkatan Kecanduan</th>
                            <th width="300">Deskripsi</th>
                            <th width="300">Solusi</th>
                            <th width="300">Aksi</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 0;
                        while ($row = mysqli_fetch_assoc($result_riwayat)) {
                            $no++;
                            echo '<tr>';
                            echo '<td>' . $no . '</td>';
                            echo '<td>' . date('d-m-Y', strtotime($row['tanggal'])) . '</td>';

                            // Fetch user information
                            $r_pasien = !empty($row['id_pasien']) ? mysqli_fetch_array(mysqli_query($con, "SELECT id_pasien, nama, umur FROM pasien WHERE id_pasien='" . $row['id_pasien'] . "'")) : null;

                            echo '<td>' . (!empty($r_pasien) ? $r_pasien['nama'] : '') . '</td>';
                            echo '<td>' . (!empty($r_pasien) ? $r_pasien['umur'] : '') . '</td>';
                            echo '<td>' . $row['nama_kecanduan'] . '</td>';
                            echo '<td>' . $row['deskripsi'] . '</td>';
                            echo '<td>' . $row['solusi'] . '</td>';

                            // Kolom untuk aksi (tombol cetak)
                            echo '<td>';
                            echo '<a href="cetak_hasil.php?id=' . $row['id_pasien'] . '" target="_blank" class="btn btn-primary btn-sm">Cetak</a>'; // Ganti `cetak.php` dengan halaman atau skrip yang sesuai untuk mencetak
                            echo '</td>';

                            echo '</tr>';
                        }
                        ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>

</html>