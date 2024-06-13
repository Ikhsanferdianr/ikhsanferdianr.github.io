<?php

include('koneksi.php');
session_start();

if (isset($_POST['registrasi'])) {
  // print_r($_POST);

  $nama = $_POST['nama'];
  $umur = $_POST['umur'];
  $alamat = $_POST['alamat'];
  $email = $_POST['email'];
  $username = $_POST['username'];
  $password = $_POST['password'];

  // Insert into the user table
  $sql_user = "INSERT INTO pasien (nama, username, email, password,  umur, alamat, level) VALUES ('$nama', '$username', '$email', '$password', '$umur', '$alamat', 'pasien')";
  $result_user = mysqli_query($con, $sql_user);

  if ($result_user) {
    $_SESSION['pesan_sukses'] = "Registrasi berhasil! Gunakan username dan password Anda untuk login.";
    header('location: home.php');
  } else {
    echo "Error insert pasien: " . mysqli_error($con);
  }
} else {
  echo "Registrasi Gagal";
}
?>
