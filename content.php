<?php
$level = isset($_SESSION['LOG_LEVEL']) ? $_SESSION['LOG_LEVEL'] : 'pasien';
$level = isset($_SESSION['LOG_LEVEL']) ? $_SESSION['LOG_LEVEL'] : 'admin';


switch ($page) {
    case 'proses_konsultasi':
        include "konsultasi_proses.php";
        break;
    case 'konsultasi':
        include "konsultasi.php";
        break;
    case 'riwayat':
        include "riwayat.php";
        break;
    case 'update_riwayat':
        include "riwayat_update.php";
        break;
    case 'user':
        include "user.php";
        break;
    case 'update_user':
        include "user_update.php";
        break;
    case 'gejala':
        include "gejala.php";
        break;
    case 'update_gejala':
        include "gejala_update.php";
        break;
    case 'penyakit':
        include "penyakit.php";
        break;
    case 'update_penyakit':
        include "penyakit_update.php";
        break;
    case 'rule':
        include "rule.php";
        break;
    case 'update_rule':
        include "rule_update.php";
        break;
    case 'password':
        include "password.php";
        break;
    case 'tentang':
        include "tentang.php";
        break;
    case 'riwayatpengguna':
        include "riwayatpengguna.php";
        break;
    case 'beranda':
        if ($level == 'admin') {
            include "beranda.php";
        } else {
            include "beranda_pasien.php";
        }
        break;
    default:
        if ($level == 'admin') {
            include "beranda.php";
        } else {
            include "beranda_pasien.php";
        }
        break;
}
?>
