<?php
$link_data = '?page=penyakit';
$link_update = '?page=update_penyakit';

$list_data = '';
$no = 0;
$q = "select * from kecanduan order by kode_kecanduan ASC";
$q = mysqli_query($con, $q);
if (mysqli_num_rows($q) > 0) {
  while ($r = mysqli_fetch_array($q)) {
    $id = $r['id_kecanduan'];
    $list_data .= '
		<tr>
		<td>' . ++$no . '</td>
		<td>' . $r['kode_kecanduan'] . '</td>
		<td>' . $r['nama_kecanduan'] . '</td>
		<td>' . $r['deskripsi'] . '</td>
		<td>' . $r['solusi'] . '</td>
    <td>
		<a href="' . $link_update . '&amp;id=' . $id . '&amp;action=edit" class="btn btn-success btn-sm" title="Edit"><i class="fa fa-edit"></i> Edit</a> &nbsp;
    <a href="' . $link_update . '&amp;id=' . $id . '&amp;action=delete" class="btn btn-danger btn-sm" title="Hapus"><i class="fa fa-trash"></i> Hapus</a></td>
	
    </tr>';
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Kecanduan</title>
    <style>
        body {
            color: black; /* Warna teks hitam untuk body */
        }

        .table th, .table td {
            color: black; /* Warna teks hitam untuk sel tabel */
        }

        .btn-primary {
            color: #fff !important; /* Warna teks putih untuk tombol warna biru (primary) */
        }
    </style>
</head>

<body>

    <h3 align="center">Data Kecanduan</h3><br>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <a href="<?php echo $link_update; ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Data</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered" id="dataTables1">
                    <thead>
                        <tr>
                            <th width="50">No.</th>
                            <th width="200">Kode Kecanduan</th>
                            <th>Jenis Kecanduan</th>
                            <th>Deskripsi</th>
                            <th>Solusi</th>
                            <th width="180">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php echo $list_data; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>

</html>