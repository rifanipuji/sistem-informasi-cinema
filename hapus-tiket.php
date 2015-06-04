<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$id = $_GET['id'];
	$del = "DELETE FROM tiket WHERE kd_tiket='$id'";
	$query = mysqli_query($mysqli, $del);
	if ($del){
		echo "data berhasil dihapus";
	}
	else{
		echo "data gagal dihapus";
	}

?>
<p><a href="index.php?halaman=laporantiket"><u>Kembali</u></a></p>