<div class="card shadow mb-4">

  <div class="card-header py-3"">
  Data Kecanduan
  </div>
  <div class=" card-body">
    <?php
    $link_data = '?page=penyakit';
    $link_update = '?page=update_penyakit';

    $kode_kecanduan = '';
    $nama_kecanduan = '';
    $deskripsi = '';
    $solusi = '';

    if (isset($_POST['save'])) {
      $error = '';
      $id = $_POST['id'];
      $action = $_POST['action'];
      $kode_kecanduan = $_POST['kode_kecanduan'];
      $nama_kecanduan = mysqli_escape_string($con, $_POST['nama_kecanduan']);
      $deskripsi = mysqli_escape_string($con, $_POST['deskripsi']);
      $solusi = mysqli_escape_string($con, $_POST['solusi']);

      if (empty($error)) {
        if ($action == 'add') {
          if (mysqli_num_rows(mysqli_query($con, "select * from kecanduan where kode_kecanduan='" . $kode_kecanduan . "'")) > 0) {
            $error = 'Kode kecanduan sudah ada';
          } else {
            $q = "insert into kecanduan(kode_kecanduan,nama_kecanduan,deskripsi,solusi) values ('" . $kode_kecanduan . "','" . $nama_kecanduan . "','" . $deskripsi . "','" . $solusi . "')";
            mysqli_query($con, $q);
            exit("<script>location.href='" . $link_data . "';</script>");
          }
        }
        if ($action == 'edit') {
          $q = mysqli_query($con, "select * from kecanduan where id_kecanduan='" . $id . "'");
          $r = mysqli_fetch_array($q);
          $kode_kecanduan_tmp = $r['kode_kecanduan'];
          if (mysqli_num_rows(mysqli_query($con, "select * from kecanduan where kode_kecanduan='" . $kode_kecanduan . "' and kode_kecanduan<>'" . $kode_kecanduan_tmp . "'")) > 0) {
            $error = 'Kode kecanduan sudah ada';
          } else {
            $q = "update kecanduan set kode_kecanduan='" . $kode_kecanduan . "',nama_kecanduan='" . $nama_kecanduan . "',deskripsi='" . $deskripsi . "',solusi='" . $solusi . "' where id_kecanduan='" . $id . "'";
            mysqli_query($con, $q);
            exit("<script>location.href='" . $link_data . "';</script>");
          }
        }
      }
    } else {
      $action = empty($_GET['action']) ? 'add' : $_GET['action'];
      if ($action == 'edit') {
        $id = $_GET['id'];
        $q = mysqli_query($con, "select * from kecanduan where id_kecanduan='" . $id . "'");
        $r = mysqli_fetch_array($q);
        $kode_kecanduan = $r['kode_kecanduan'];
        $nama_kecanduan = $r['nama_kecanduan'];
        $deskripsi = $r['deskripsi'];
        $solusi = $r['solusi'];
      }
      if ($action == 'delete') {
        $id = $_GET['id'];
        mysqli_query($con, "delete from kecanduan where id_kecanduan='" . $id . "'");
        exit("<script>location.href='" . $link_data . "';</script>");
      }
    }
    ?>
    <div class="box box-success">
      <div class="box-header with-border">
      </div>
      <form class="form-horizontal" action="<?php echo $link_update; ?>" method="post">
        <input name="id" type="hidden" value="<?php echo $id; ?>">
        <input name="action" type="hidden" value="<?php echo $action; ?>">
        <div class="box-body">
          <?php
          if (!empty($error)) {
            echo '<div class="alert bg-danger" role="alert">' . $error . '</div>';
          }
          ?>
          <div class="form-group">
            <label for="kode_kecanduan" class="col-sm-2 control-label">Kode Kecanduan</label>
            <div class="col-sm-6">
              <input name="kode_kecanduan" id="kode_kecanduan" class="form-control" required type="text" value="<?php echo $kode_kecanduan; ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="nama_kecanduan" class="col-sm-2 control-label">Jenis Kecanduan</label>
            <div class="col-sm-6">
              <input name="nama_kecanduan" id="nama_kecanduan" class="form-control" required type="text" value="<?php echo $nama_kecanduan; ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="deskripsi" class="col-sm-2 control-label">Deskripsi</label>
            <div class="col-sm-6">
              <textarea name="deskripsi" id="deskripsi" class="form-control" rows="3" cols="1"><?php echo $deskripsi; ?></textarea>
            </div>
          </div>
          <div class="form-group">
            <label for="solusi" class="col-sm-2 control-label">Solusi</label>
            <div class="col-sm-6">
              <textarea name="solusi" id="solusi" class="form-control" rows="3"><?php echo $solusi; ?></textarea>
            </div>
          </div>
        </div>
        <div class="box-footer">
          <div class="text-center col-sm-10">
            <a href="<?php echo $link_data; ?>" class="btn btn-secondary btn-sm"><i class="fa fa-times"></i> Batal</a>
            <button type="submit" name="save" class="btn btn-primary btn-sm"><i class="fa fa-save"></i> Simpan</button>

          </div>
        </div>
      </form>
    </div>
  </div>
</div>