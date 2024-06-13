<?php
$error = '';

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Periksa apakah pengguna adalah admin
    $admin_query = mysqli_query($con, "SELECT * FROM admin WHERE email='$email' AND password='$password'");
    if (mysqli_num_rows($admin_query) > 0) {
        $admin_row = mysqli_fetch_array($admin_query);

        // Periksa level admin
        if ($admin_row['level'] === 'admin') {
            // Set variabel sesi admin
            $_SESSION['LOG_USER'] = $admin_row['id_admin'];
            $_SESSION['LOGUSER'] = $admin_row['username'];
            $_SESSION['LOG_LEVEL'] = 'admin'; // Atur nilai spesifik untuk admin

            header('location:home.php'); // Alihkan ke halaman beranda admin
            exit();
        } else {
            // Level admin tidak sesuai
            $error = 'Anda bukan admin!';
        }
    }

    // Periksa apakah pengguna adalah pasien
    $patient_query = mysqli_query($con, "SELECT * FROM pasien WHERE email='$email' AND password='$password'");
    if (mysqli_num_rows($patient_query) > 0) {
        $patient_row = mysqli_fetch_array($patient_query);

        // Set variabel sesi pasien
        $_SESSION['LOG_USER'] = $patient_row['id_pasien'];
        $_SESSION['LOGUSER'] = $patient_row['username'];
        $_SESSION['LOGUSER1'] = $patient_row['umur']; // Tambahkan umur ke dalam sesi
        $_SESSION['LOGUSER2'] = $patient_row['alamat']; // Tambahkan alamat ke dalam sesi
        $_SESSION['LOG_LEVEL'] = $patient_row['level']; // Gunakan level dari pasien

        header('location:home.php'); // Alihkan ke halaman beranda pasien
        exit();
    }
}

// Sisanya dari kode Anda...
?>