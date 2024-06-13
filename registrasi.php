<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Aplikasi pendaftaran Siswa SMKN DARUL ULUM MUNCAR.">
  <meta name="author" content="e-development.tech">

  <title>Sistem Pakar Kecanduan Game Online</title>
  <link href="assets/img/dd.png" type="image/x-icon" rel="shortcut icon">  <!-- gambar title -->
 

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- css datepicker -->
  <link href="assets/vendor/datepicker/css/bootstrap-datepicker.css" rel="stylesheet">

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

      <div class="col-md-7">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-md-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Create Acoount</h1>
                  </div>
                  <form class="user" action="registrasi_control.php" method="POST">
                    <div class="form-group">
                      <label for="nama">Nama</label>
                      <input type="text" class="form-control" id="nama" placeholder="Masukkan Nama" name="nama" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                      <label for="text">Username</label>
                      <input name="username" type="text" class="form-control" id="username" placeholder="Masukkan Username" autocomplete="off" required>
                    </div>


                    <div class="form-group">
                      <label for="umur">Umur</label>
                      <input type="text" class="form-control" id="umur" placeholder="Masukkan Umur" name="umur" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                      <label for="alamat">Alamat</label>
                      <textarea class="form-control" id="alamat" name="alamat" placeholder="Masukan Alamat" autocomplete="off" rows="3"></textarea>
                    </div>

                    <div class="form-group">
                      <label for="text">Email</label>
                      <input name="email" type="text" class="form-control" id="email" placeholder="Masukkan Email" autocomplete="off" required>
                    </div>

                    <div class="form-group row">
                      <div class="col-md-6">
                        <label for="password">Password</label>
                        <input name="password" type="password" class="form-control" id="password" placeholder="Password">
                      </div>
                      <div class="col-md-6">
                        <label for="ulangi_password">Ulangi Password</label>
                        <input name="ulangi_password" type="password" class="form-control" id="ulangi_password" placeholder="Ulangi Password">
                      </div>
                    </div>

                    <button name="registrasi" value="simpan" class="btn btn-primary btn-block rounded-pill">
                      Registrasi
                    </button>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="home.php">Sudah punya akun? Login!</a>
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

  <!-- js datepicker -->
  <script src="assets/vendor/datepicker/js/bootstrap-datepicker.min.js"></script>

</body>

</html>
