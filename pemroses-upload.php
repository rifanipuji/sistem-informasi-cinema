<?php
$mysqli = new mysqli("localhost", "root", "", "cinema");
$kd_pemesanan= $_POST['kd_pemesanan'];
$nama_file=$_FILES['file']['name'];
$tmp_file=$_FILES['file']['tmp_name'];

$sql = "UPDATE tiket SET gambar_transfer='$nama_file' WHERE kd_pemesanan='$kd_pemesanan'";
$query = mysqli_query($mysqli, $sql);
$cek = mysqli_affected_rows($mysqli);

	if ( $cek > 0 ) {
			move_uploaded_file($tmp_file, 'img/'.$nama_file);
			echo "Terima kasih atas kunjungannya";
		} else{
			echo "kesalahan pemasukan data";
	}
?>
<p><a href="index.php?halaman=home"><u>Kembali</u></a></p>