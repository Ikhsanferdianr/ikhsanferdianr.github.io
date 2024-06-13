<div class="card shadow mb-4">
    <div class="card-header py-3">
        Data Pasien
    </div>
    <div class="card-body">
        <?php
        $link_data = '?page=user';
        $link_update = '?page=update_user';

        $id_pasien = '';
        $username = '';
        $nama = '';
        $umur = '';
        $alamat = '';
        $password = '';
        $level = '';

        if (isset($_POST['save'])) {
            $error = '';
            $id = $_POST['id'];
            $action = $_POST['action'];
            $nama = $_POST['nama'];
            $username = $_POST['username'];
            $umur = $_POST['umur'];
            $alamat = $_POST['alamat'];
            $password = $_POST['password'];
            $level = $_POST['level'];
            $nama_pasien = mysqli_escape_string($con, $nama);

            if (empty($error)) {
                if ($action == 'add') {
                    if (mysqli_num_rows(mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien='" . $id_pasien . "'")) > 0) {
                        $error = 'ID pasien sudah ada';
                    } else {
                        $q = "INSERT INTO pasien(nama, username, umur, alamat, password, level) VALUES ('$nama', '$username', '$umur', '$alamat', '$password', '$level')";
                        mysqli_query($con, $q);
                        exit("<script>location.href='" . $link_data . "';</script>");
                    }
                }
                if ($action == 'edit') {
                    $q = mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien='" . $id . "'");
                    $r = mysqli_fetch_array($q);
                    $id_pasien_tmp = $r['id_pasien'];
                    if (mysqli_num_rows(mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien='" . $id_pasien . "' AND id_pasien<>'" . $id_pasien_tmp . "'")) > 0) {
                        $error = 'ID pasien sudah ada';
                    } else {
                        $q = "UPDATE pasien SET nama='$nama', username='$username', umur='$umur', alamat='$alamat', password='$password', level='$level' WHERE id_pasien='$id'";
                        mysqli_query($con, $q);
                        exit("<script>location.href='" . $link_data . "';</script>");
                    }
                }
            }
        } else {
            $action = empty($_GET['action']) ? 'add' : $_GET['action'];
            if ($action == 'edit') {
                $id = $_GET['id'];
                $q = mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien='" . $id . "'");
                $r = mysqli_fetch_array($q);
                $id_pasien = $r['id_pasien'];
                $username = $r['username'];
            }
            if ($action == 'delete') {
                $id = $_GET['id'];
                mysqli_query($con, "DELETE FROM pasien WHERE id_pasien='" . $id . "'");
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
                        <label for="id_pasien" class="col-sm-2 control-label">Nama Lengkap</label>
                        <div class="col-sm-4">
                            <input name="nama" id="nama" class="form-control" required type="text" value="<?php echo $nama; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="id_pasien" class="col-sm-2 control-label">Username</label>
                        <div class="col-sm-4">
                            <input name="username" id="username" class="form-control" required type="text" value="<?php echo $username; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="id_pasien" class="col-sm-2 control-label">Umur</label>
                        <div class="col-sm-4">
                            <input name="umur" id="umur" class="form-control" required type="text" value="<?php echo $umur; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="id_pasien" class="col-sm-2 control-label">Alamat</label>
                        <div class="col-sm-4">
                            <input name="alamat" id="alamat" class="form-control" required type="text" value="<?php echo $alamat; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nama_pasien" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-4">
                            <input name="password" id="password" class="form-control" required type="text" value="<?php echo $password; ?>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="nama_pasien" class="col-sm-2 control-label">Level</label>
                        <div class="col-sm-4">
                            <input name="level" id="level" class="form-control" required type="text" value="<?php echo $level; ?>">
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="text-center col-sm-6">
                        <a href="<?php echo $link_data; ?>" class="btn btn-secondary btn-sm"><i class="fa fa-times"></i> Batal</a>
                        <button type="submit" name="save" class="btn btn-primary btn-sm"><i class="fa fa-save"></i> Simpan</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
