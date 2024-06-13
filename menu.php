<!-- Load Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-ezv3mUoDp1dG5o5I+Jgsh5bb2o8okJjs5dbTlYGjj3Tcb5OaXX/xNY4O8fHbQszGP" crossorigin="anonymous">

<?php
$page = isset($_GET['page']) ? $_GET['page'] : "";
$level = isset($_SESSION['LOG_LEVEL']) ? $_SESSION['LOG_LEVEL'] : "";
?>
<hr class="sidebar-divider">

<?php if ($level == "admin") { ?>
    <li class="nav-item" <?php if ($page == "beranda") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=beranda"><i class="fa fa-home" aria-hidden="true"></i> <span>Beranda Admin</span></a></li>
    <li class="nav-item" <?php if ($page == "gejala" || $page == "update_gejala") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=gejala"><i class="fa fa-heartbeat"></i> <span>Data Gejala</span></a></li>
    <li class="nav-item" <?php if ($page == "penyakit" || $page == "update_penyakit") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=penyakit"><i class="fa fa-medkit"></i> <span>Data Kecanduan</span></a></li>
    <li class="nav-item" <?php if ($page == "rule" || $page == "update_rule") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=rule"><i class="fa fa-book"></i> <span>Data Rule</span></a></li>
    <li class="nav-item" <?php if ($page == "user" || $page == "update_user") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=user"><i class="fa fa-users"></i> <span>Data Pasien</span></a></li>
    <li class="nav-item" <?php if ($page == "konsultasi") echo 'class="active"'; ?>><a class="nav-link" href="?page=konsultasi"><i class='fas fa-diagnoses'></i><span>Konsultasi</span></a></li>
    <li class="nav-item" <?php if ($page == "Tentang") echo 'class="active"'; ?>><a class="nav-link" href="?page=tentang"><i class="fas fa-address-card"></i><span>Tentang Pakar</span></a></li>
    <li class="nav-item" <?php if ($page == "riwayatpengguna") echo 'class="active"'; ?>><a class="nav-link" href="?page=riwayatpengguna"><i class="fa fa-history" aria-hidden="true"></i><span>Riwayat Konsultasi</span></a></li>
    <li class="nav-item" <?php if ($page == "riwayat" || $page == "update_riwayat") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=riwayat"><i class="fa fa-book"></i> <span>Laporan Konsultasi Pasien</span></a></li>

<?php } elseif ($level == "pasien") { ?>
    <li class="nav-item" <?php if ($page == "beranda_pasien") echo 'class="active"'; ?>><a class="nav-link" href=" ?page=beranda_pasien"><i class="fa fa-home" aria-hidden="true"></i><span>Beranda Pasien</span></a></li>
    <li class="nav-item" <?php if ($page == "konsultasi") echo 'class="active"'; ?>><a class="nav-link" href="?page=konsultasi"><i class='fas fa-diagnoses'></i><span>Konsultasi</span></a></li>
    <li class="nav-item" <?php if ($page == "riwayatpengguna") echo 'class="active"'; ?>><a class="nav-link" href="?page=riwayatpengguna"><i class="fa fa-history" aria-hidden="true"></i><span>Riwayat</span></a></li>
    <li class="nav-item" <?php if ($page == "Tentang") echo 'class="active"'; ?>><a class="nav-link" href="?page=tentang"><i class="fas fa-address-card"></i><span>Tentang Pakar</span></a></li>


<?php } ?>
<hr class="sidebar-divider">
