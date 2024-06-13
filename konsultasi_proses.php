
    <h3 align="center">Hasil Konsultasi</h3>

<div class="card shadow mb-4">
<div class="card-header py-3" style="color: black; font-weight: bold;">
        Gejala Yang Dipilih
    </div>
    <div class="card-body">
        <?php
        $link_konsultasi = '?page=konsultasi';

        function arrays_are_equal($array1, $array2)
        {
            array_multisort($array1);
            array_multisort($array2);
            return (serialize($array1) === serialize($array2));
        }

        if (isset($_POST['proses'])) {
            $id_pasien = isset($_SESSION['LOG_USER']) ? $_SESSION['LOG_USER'] : '';
            $username = isset($_SESSION['LOGUSER']) ? $_SESSION['LOGUSER'] : '';
            $umur = isset($_SESSION['LOGUSER1']) ? $_SESSION['LOGUSER1'] : '';
            $alamat = isset($_SESSION['LOGUSER2']) ? $_SESSION['LOGUSER2'] : '';
            $arr_gejala_terpilih = isset($_SESSION['arr_gejala_terpilih']) ? $_SESSION['arr_gejala_terpilih'] : array();
            $tanggal = date('Y-m-d');

            $arr_gejala_terpilih = array();
            $list_data = '';
            $no = 0;

            for ($i = 0; $i < count($_POST['gejala']); $i++) {
                $gejala = $_POST['gejala'][$i];
                $arr_gejala_terpilih[] = $gejala;
                $rgejala = mysqli_fetch_array(mysqli_query($con, "SELECT kode_gejala,nama_gejala FROM gejala where id_gejala = " . $gejala));
                $list_data .= '
                <tr>
                    <td>' . ++$no . '.    ' . '</td>
                    <td>&nbsp;</td>
                    <td>' . '  ' . ' ' . $rgejala['kode_gejala'] . ' - ' . $rgejala['nama_gejala'] . '</td>
                </tr>
                ';
              }

            $id_kecanduan_hasil = '';
            $nama_kecanduan_hasil = '';
            $deskripsi_hasil = '';
            $solusi_hasil = '';

            $sql1 = mysqli_query($con, "SELECT id_kecanduan, nama_kecanduan, deskripsi, solusi FROM kecanduan ORDER BY id_kecanduan");
            while ($r = mysqli_fetch_array($sql1)) {
                $id_kecanduan = $r['id_kecanduan'];
                $nama_kecanduan = $r['nama_kecanduan'];
                $deskripsi = $r['deskripsi'];
                $solusi = $r['solusi'];

                $arr_gejala_kecanduan = array();
                $sql_at = mysqli_query($con, "SELECT id_gejala FROM rule WHERE id_kecanduan='$id_kecanduan' ORDER BY id_gejala");

                while ($r_at = mysqli_fetch_array($sql_at)) {
                    $id_gejala = $r_at['id_gejala'];
                    $arr_gejala_kecanduan[] = $id_gejala;
                }

                if (arrays_are_equal($arr_gejala_terpilih, $arr_gejala_kecanduan)) {
                    $id_kecanduan_hasil = $id_kecanduan;
                    $nama_kecanduan_hasil = $nama_kecanduan;
                    $deskripsi_hasil = $deskripsi;
                    $solusi_hasil = $solusi;
                }
            }
            if ($nama_kecanduan_hasil != '') {
                // Simpan ke tabel hasil dengan menyertakan id_gejala
                    $q = "INSERT INTO hasil (id_pasien, id_kecanduan, username, umur, alamat, tanggal, deskripsi, solusi) 
                    VALUES ('$id_pasien', '$id_kecanduan_hasil', '$username', '$umur', '$alamat', '$tanggal', '$deskripsi_hasil', '$solusi_hasil')";
                    mysqli_query($con, $q);
            
            } else{
                $nama_kecanduan_hasil = '<b>Anda Tidak Mengalami Kecanduan Dalam Bermain Game Online</b>';
                    $q = "INSERT INTO hasil (id_pasien, username, umur, alamat, tanggal) 
                    VALUES ('$id_pasien', '$username', '$umur', '$alamat', '$tanggal')";
                    mysqli_query($con, $q);
                }
            
            
            
            $tbl_hasil = '';

            $tbl_hasil .= '
            <tr>
                <td width="150">Nama :</td>
                <td><strong>' . $username . '</strong></td>
            </tr>
            
            <tr>
                <td width="150">Umur :</td>
                <td><strong>' . $umur . '</strong></td>
            </tr>

            <tr>
                <td width="150">Alamat :</td>
                <td><strong>' . $alamat . '</strong></td>
            </tr>
            
            <tr>
                <td width="120">Tingkatan Kecanduan :</td>
                <td>' . $nama_kecanduan_hasil . '</td>
            </tr>';

            if (!empty($id_kecanduan_hasil)) {
                $tbl_hasil .= '
                <tr>
                    <td width="150">Deskripsi</td>
                    <td><strong>' . $deskripsi_hasil . '</strong></td>
                </tr>
                <tr>
                    <td width="150">Solusi</td>
                    <td><strong>' . $solusi_hasil . '</strong></td>
                </tr>';
            }

            if (!empty($id_kecanduan_hasil)) {
                $rusername = mysqli_fetch_array(mysqli_query($con, "SELECT username FROM pasien WHERE id_pasien='$id_pasien'"));
                $rumur = mysqli_fetch_array(mysqli_query($con, "SELECT umur FROM pasien WHERE id_pasien='$id_pasien'"));
                $ralamat = mysqli_fetch_array(mysqli_query($con, "SELECT alamat FROM pasien WHERE id_pasien='$id_pasien'"));
                $rkecanduan = mysqli_fetch_array(mysqli_query($con, "select * from kecanduan where id_kecanduan='" . $id_kecanduan_hasil . "'"));
                $rdeskripsi = mysqli_fetch_array(mysqli_query($con, "select * from kecanduan where id_kecanduan='" . $id_kecanduan_hasil . "'"));
                $rsolusi = mysqli_fetch_array(mysqli_query($con, "select * from kecanduan where id_kecanduan='" . $id_kecanduan_hasil . "'"));

                $tbl_hasil = '
                <tr>
        <td width="150" style="color: black;"><strong>Nama :</td>
        <td style="color: black;">' . $username . '</td>
    </tr>

    <tr>
        <td width="150" style="color: black;"><strong>Umur :</td>
        <td style="color: black;">' . $umur . '</td>
    </tr>

    <tr>
        <td width="150" style="color: black;"><strong>Alamat :</td>
        <td style="color: black;">' . $alamat . '</td>
    </tr>

    <tr>
        <td width="150" style="color: black;"><strong>Tingkatan Kecanduan :</td>
        <td style="color: black;">' . $rkecanduan['kode_kecanduan'] . ' - ' . $rkecanduan['nama_kecanduan'] . '</td>
    </tr>

    <tr>
        <td width="150" style="color: black;"><strong>Deskripsi :</td>
        <td style="color: black;">' . $rkecanduan['deskripsi'] . '</td>
    </tr>

    <tr>
        <td width="150" style="color: black;"><strong>Solusi</td>
        <td style="color: black;">' . $rkecanduan['solusi'] . '</td>
    </tr>
            ';
            }
        ?>
        <div class="box box-success">
            <div class="box-body">
                <div class='table-responsive'>
                    <table>
                        <tbody>
                            <?php echo $list_data; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
    <div class="card-header py-3" style="color: black; font-weight: bold;">
    Hasil Analisa
</div>

    <div class="card-body">
        <div class='table-responsive'>
            <table class='table'>
                <tbody>
                    <?php echo $tbl_hasil; ?>
                </tbody>
            </table>
        </div>
    </div>

    <div class="card-footer">
    <div class="col-sm-12">
        <a href="<?php echo $link_konsultasi; ?>" class="btn btn-primary">Ulangi Konsultasi</a> &nbsp;
        <a href="cetak_hasil.php"><button class="btn btn-success" id="btn-cetak">Cetak Hasil</button></a>
    </div>
</div>
</div>
