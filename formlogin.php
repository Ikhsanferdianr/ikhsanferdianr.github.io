<?php
include "ceklogin.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Sistem Pakar Kecanduan Game Online.">
    <meta name="author" content="e-development.tech">

    <title>Sistem Pakar Kecanduan Game Online</title>
    <link href="assets/img/rsud.jpeg" type="image/x-icon" rel="shortcut icon">
    <!-- gambar title -->
    <link href="assets/img/rsud.jpeg" type="image/x-icon" rel="shortcut icon">

    <!-- Custom fonts for this template-->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

    <style>
        .logo-login {
            max-height: 160px;
            margin-bottom: 20px;
        }
    </style>

</head>


<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block">
                                <img src="assets/img/download.png" height="487px">
                            </div>
                            <div class=" col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back</h1>


                                    </div>
                                    <div class="mb-3">
                                        <?php
                                        if (!empty($error)) {
                                            echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">' . $error . '</div>';
                                        }
                                        ?>

                                        <?php
                                        if (isset($_SESSION['pesan_sukses'])) {
                                        ?>
                                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                                <strong>Berhasil, </strong> <?php echo $_SESSION['pesan_sukses']; ?>
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            </div>
                                        <?php

                                            unset($_SESSION['pesan_sukses']);
                                        }
                                        ?>
                                        <?php
                                        if (isset($_SESSION['pesan_salah'])) {
                                        ?>
                                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                <?php echo $_SESSION['pesan_salah']; ?>
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            </div>
                                        <?php

                                            unset($_SESSION['pesan_salah']);
                                        }
                                        ?>
                                    </div>
                                    <form class="user" action="" method="POST">
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email</label>
                                            <input type="text" class="form-control" id="email" name="email" placeholder="Masukan Email">
                                        </div>

                                        <div class="mb-3">
                                            <label for="password" class="form-label">Password</label>
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Masukan Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Ingat Saya</label>
                                            </div>
                                        </div>
                                        <button type="submit" name="login" value="login" class="btn btn-primary btn-block rounded-pill">
                                            Login
                                        </button>
                                        <hr>
                                    </form>

                                    <div class="text-center">
                                        Belum Punya Akun ?<br> <a class="small" href="registrasi.php">Registrasi</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>


    <!-- Bootstrap core JavaScript-->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="assets/js/sb-admin-2.min.js"></script>
    <script>
        window.setTimeout(function() {
            $(".alert").fadeTo(200, 0).slideUp(200, function() {
                $(this).remove();
            });
        }, 3000);
    </script>

</body>

</html>