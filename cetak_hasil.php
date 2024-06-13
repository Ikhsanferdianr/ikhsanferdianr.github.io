<?php
include('koneksi.php');

$con = @mysqli_connect($db_host, $db_user, $db_password) or die('<center><strong>Gagal koneksi ke server database</strong></center>');
mysqli_select_db($con, $db_name) or die('<center><strong>Database tidak ditemukan</strong></center>');

session_start();
if (!isset($_SESSION['LOG_USER'])) {
    header("Location: login.php");
}

$id_pasien = isset($_SESSION['LOG_USER']) ? $_SESSION['LOG_USER'] : '';
$username = isset($_SESSION['LOGUSER']) ? $_SESSION['LOGUSER'] : '';
$umur = isset($_SESSION['LOGUSER1']) ? $_SESSION['LOGUSER1'] : '';
$alamat = isset($_SESSION['LOGUSER2']) ? $_SESSION['LOGUSER2'] : '';
$tanggal = date('Y-m-d');

// Inisialisasi nilai-nilai hasil konsultasi
$nama_gejala_hasil = '';
$nama_kecanduan_hasil = '';
$deskripsi_hasil = '-';
$solusi_hasil = '-';

// Query untuk mendapatkan gejala terpilih
$list_data = '';


// Query untuk mendapatkan hasil konsultasi
$result_hasil = mysqli_query($con, "SELECT h.*,  p.nama_kecanduan 
                                    FROM hasil h
                                    LEFT JOIN kecanduan p ON h.id_kecanduan = p.id_kecanduan
                                    WHERE h.id_pasien='$id_pasien' 
                                    ORDER BY h.id_hasil DESC 
                                    LIMIT 1");

if ($result_hasil) {
    $hasil_konsultasi = mysqli_fetch_array($result_hasil);
    $nama_kecanduan_hasil = isset($hasil_konsultasi['nama_kecanduan']) ? $hasil_konsultasi['nama_kecanduan'] : '';
    $deskripsi_hasil = $hasil_konsultasi['deskripsi'];
    $solusi_hasil = $hasil_konsultasi['solusi'];
} else {
    die('<center><strong>Error: ' . mysqli_error($con) . '</strong></center>');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Konsultasi Pasien</title>
    <style>
        body {
            color: black;
            align-items: center;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            padding: 8px;
            text-align: left;
        }

        .btn-primary {
            color: #fff !important;
        }

        .header-container {
            display: flex;
            align-items: center;
        }

        .logo {
            height: 80px;
            margin-right: 30px; /* Tambahkan margin di sini */
        }

        hr {
            border: 0.5px solid black;
            margin: 20px 5px 18px 5px;
        }

        .content {
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="header-container">
        <img src="./assets/img/rsud.jpeg" class="logo">
        <div>
            <div style="font-size: 22px;">RSUD Dr. Muhammad Zein Painan</div>
            <div style="font-size: 14px;">Painan, Sumatera Barat 25611</div>
            <div style="font-size: 14px;">Telp (0756) 21418, Email rsudpainan@ymail.com</div>
        </div>
    </div>
    <hr>
    <div class="content">
    <h2 align="center">Hasil Konsultasi</h2>
    <table width="100%">
        <tr>
            <td>Tanggal</td>
            <td>:</td>
            <td><?php echo $tanggal; ?></td>
        </tr>
        <tr>
            <td>Nama</td>
            <td>:</td>
            <td><?php echo $username; ?></td>
        </tr>
        <tr>
            <td>Umur</td>
            <td>:</td>
            <td><?php echo $umur; ?></td>
        </tr>
        <tr>
            <td>Alamat</td>
            <td>:</td>
            <td><?php echo $alamat; ?></td>
        </tr>
        <tr>
            <td>Gejala Yang Dipilih</td>
            <td>:</td>
            <td><?php echo $nama_gejala_hasil; ?></td>
        </tr>
        <tr>
            <td>Tingkatan Kecanduan</td>
            <td>:</td>
            <td><?php echo $nama_kecanduan_hasil; ?></td>
        </tr>
        <tr>
            <td>Deskripsi</td>
            <td>:</td>
            <td><?php echo $deskripsi_hasil; ?></td>
        </tr>
        <tr>
            <td>Solusi</td>
            <td>:</td>
            <td><?php echo $solusi_hasil; ?></td>
        </tr>
    </table>
</body>

</html>
