<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-4" align="center">Sistem Pakar Diagnosa Kecanduan Game Online</h1><br>
  <div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                <h6><strong>Data Gejala</strong></h6>
              </div>
              <div class="h2 mb-0 font-weight-bold text-gray-800">
                <?php
                include 'koneksi.php';
                $data_gejala = mysqli_query($con, "SELECT * FROM gejala");
                $jumlah_gejala = mysqli_num_rows($data_gejala);
                ?><?php echo $jumlah_gejala; ?></b></p>


              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-stethoscope fa-4x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                <h6><strong>Data kecanduan</strong></h6>
              </div>
              <div class="h2 mb-0 font-weight-bold text-gray-800">
                <?php
                include 'koneksi.php';

                $data_kecanduan = mysqli_query($con, "SELECT * FROM kecanduan");
                $jumlah_kecanduan = mysqli_num_rows($data_kecanduan);
                ?><?php echo $jumlah_kecanduan; ?></b></p>
              </div>

            </div>
            <div class="col-auto">
              <i class="fas fa-plus-square fa-4x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                <h6><strong>Data Rule</strong></h6>
              </div>
              <div class="row no-gutters align-items-center">
                <div class="col-auto">
                  <div class="h2 mb-0 font-weight-bold text-gray-800">
                    <?php
                    include 'koneksi.php';

                    $data_rule = mysqli_query($con, "SELECT * FROM kecanduan");
                    $jumlah_rule = mysqli_num_rows($data_rule);
                    ?><?php echo $jumlah_rule; ?></b></p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-clipboard-list fa-4x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                <h6><strong>Data Users</strong></h6>
              </div>
              <div class="h2 mb-0 font-weight-bold text-gray-800">
                <?php
                include 'koneksi.php';

                $data_users = mysqli_query($con, "SELECT * FROM pasien");
                $jumlah_users = mysqli_num_rows($data_users);
                ?><?php echo $jumlah_users; ?></b></p>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-4x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
<!-- Begin Page Content -->

<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800" align="center"></h1><br>
  <div class="row">
    <!-- Your existing code for cards -->

  </div>

</div>
