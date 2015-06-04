<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$id = $_GET['id'];
	$del = "DELETE FROM film WHERE kd_film='$id'";
	$query = mysqli_query($mysqli, $del);
	if ($del){
		echo "data berhasil dihapus";
	}
	else{
		echo "data gagal dihapus";
	}

?>
<p><a href="index.php?halaman=laporanfilm"><u>Kembali</u></a></p>