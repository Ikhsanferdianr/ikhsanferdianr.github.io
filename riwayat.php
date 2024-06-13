
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Konsultasi Pasien</title>
    <style>
        body {
            color: black; /* Warna teks hitam untuk body */
        }

        .table th,
        .table td {
            color: black; /* Warna teks hitam untuk sel tabel */
        }

        .btn-primary {
            color: #fff !important; /* Warna teks putih untuk tombol warna biru (primary) */
        }

      
    </style>
</head>

<body>
    <h3 align="center">Laporan Konsultasi Pasien</h3><br>
    <hr>
    <section class="content">
    <div class="row">
      <section class="col-lg-12">
        <div class="box box-info">
          <div class="box-body">
            <form id="filterForm" method="get" action="">
              <div class="row">
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Filter per Hari</label>
                    <div class="input-group">
                      <input autocomplete="off" type="text" name="tanggal" id="tanggal" class="form-control datepicker2" placeholder="Pilih Tanggal" required="required">
                      <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    </div>
                  </div>
                </div>

                <div class="col-md-3">
                  <div class="form-group">
                    <label>Filter per Bulan</label>
                    <div class="input-group">
                      <input autocomplete="off" type="text" name="bulan" id="bulan" class="form-control monthpicker" placeholder="Pilih Bulan" required="required">
                      <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    </div>
                  </div>
                </div>

                <div class="col-md-3">
                  <div class="form-group">
                    <label>Filter per Tahun</label>
                    <div class="input-group">
                      <input autocomplete="off" type="text" name="tahun" id="tahun" class="form-control yearpicker" placeholder="Pilih Tahun" required="required">
                      <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    </div>
                  </div>
                </div>
              </div>
            </form>
            <hr>
          </div>
        </div>

        <div class="box box-info">
          <div class="box-body" id="laporanPenjualan">
            <!-- Hasil Laporan akan muncul di sini -->
          </div>
        </div>
      </section>
    </div>
  </section>
  <script>
  $(document).ready(function() {
    // Fungsi untuk menampilkan laporan saat tanggal dipilih
    $(".datepicker2").change(function() {
      var tanggal = $(this).val();
      $.ajax({
        url: "riwayat_ajax.php",
        type: "POST",
        data: {
          tanggal: tanggal
        },
        success: function(response) {
          $("#laporanPenjualan").html(response);
        }
      });
      // Mereset nilai input filter bulan dan tahun
      $("#bulan").val("");
      $("#tahun").val("");
    });

    // Fungsi untuk menampilkan laporan saat bulan dipilih
    $(".monthpicker").change(function() {
      var bulan = $(this).val();
      $.ajax({
        url: "riwayat_ajax.php",
        type: "POST",
        data: {
          bulan: bulan
        },
        success: function(response) {
          $("#laporanPenjualan").html(response);
        }
      });
      // Mereset nilai input filter tanggal dan tahun
      $("#tanggal").val("");
      $("#tahun").val("");
    });

    // Fungsi untuk menampilkan laporan saat tahun dipilih
    $(".yearpicker").change(function() {
      var tahun = $(this).val();
      $.ajax({
        url: "riwayat_ajax.php",
        type: "POST",
        data: {
          tahun: tahun
        },
        success: function(response) {
          $("#laporanPenjualan").html(response);
        }
      });
      // Mereset nilai input filter tanggal dan bulan
      $("#tanggal").val("");
      $("#bulan").val("");
    });

    // Tombol print
    $("#printButton").click(function() {
      var tanggal = $("#tanggal").val();
      var bulan = $("#bulan").val();
      var tahun = $("#tahun").val();
      var url = 'laporan_print.php?';

      if (tanggal != '') {
        url += 'tanggal=' + tanggal;
      } else if (bulan != '') {
        url += 'bulan=' + bulan;
      } else if (tahun != '') {
        url += 'tahun=' + tahun;
      } else {
        // Tampilkan pesan jika tidak ada filter yang dipilih
        alert("Silakan pilih filter terlebih dahulu.");
        return;
      }

      // Buka halaman print dalam tab baru
      window.open(url, '_blank');
    });



    // Inisialisasi plugin Bootstrap Datepicker untuk input field dengan class monthpicker
    $('.monthpicker').datepicker({
      format: "mm-yyyy",
      startView: "months",
      minViewMode: "months",
      autoclose: true
    });

    // Inisialisasi plugin Bootstrap Datepicker untuk input field dengan class yearpicker
    $('.yearpicker').datepicker({
      format: "yyyy",
      startView: "years",
      minViewMode: "years",
      autoclose: true
    });

  });
</script>

   