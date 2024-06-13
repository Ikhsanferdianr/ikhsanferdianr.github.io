<?php
$link_proses = '?page=proses_konsultasi';

$chk_gejala = '';
$q = "select * from gejala order by id_gejala";
$q = mysqli_query($con, $q);
while ($r = mysqli_fetch_array($q)) {
  $kode_gejala = $r['kode_gejala'];
  $nama_gejala = $r['nama_gejala'];
  $chk_gejala .= '
	<tr>
		<td align="center"><input type="checkbox" name="gejala[]" class="flat" value="' . $r['id_gejala'] . '"></td>
		<td>' . $kode_gejala . ' - ' . $nama_gejala . '</td>
	</tr>';
}
?>
<script type="text/javascript">
  $(document).ready(function() {
    $('#frm').submit(function() {
      if (!$('input[type=checkbox]:checked').length) {
        $('#chkmod').modal('show');
        return false;
      }
      return true;
    });

  });
</script>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Konsultasi</title>
    <style>
        body {
            color: black; /* Warna teks hitam untuk body */
        }

        table.table {
            color: black !important; /* Warna teks hitam untuk tabel */
        }

        .btn-primary {
            color: #fff !important; /* Warna teks putih untuk tombol warna biru (primary) */
        }
        
    
    </style>
</head>

<body>

    <h3 align="center">Form Konsultasi</h3><br>

    <div class="card shadow mb-4">
        <form action="<?php echo $link_proses; ?>" id="frm" method="post">
            <div class="card-header py-3">
                <button type="submit" class="btn btn-primary " name="proses">Konsultasi</button>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th width="40">#</th>
                                <th>Pilih gejala yang dirasakan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php echo $chk_gejala; ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="box-footer">
                <!-- Isi sesuai kebutuhan -->
            </div>
        </form>
    </div>

    <div class="modal fade" id="chkmod" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Informasi</h4>
                </div>
                <div class="modal-body">
                    <p>Pilih gejala yang dirasakan</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>

</body>

</html>