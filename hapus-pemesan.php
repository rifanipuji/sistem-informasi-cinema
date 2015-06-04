<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$id = $_GET['id'];
	$select = "select t.kd_tiket, t.jml_tiket FROM tiket t inner join pemesan p on t.kd_tiket=p.kd_tiket WHERE p.kd_pemesan='$id'";
	$query = mysqli_query($mysqli, $select);
	$data= mysqli_fetch_assoc($query);
	$jml_tiket= $data['jml_tiket'];
	$kd_tiket= $data['kd_tiket'];
	$data_minus= $jml_tiket--;
	$upd="update tiket set jml_tiket='$jml_tiket' where kd_tiket='$kd_tiket'";
	$query2=mysqli_query($mysqli,$upd);
	$del="delete from pemesan where kd_pemesan='$id'";
	$query3=mysqli_query($mysqli,$del);
	
	if ($query3){
		echo "data berhasil dihapus";
		
	}
	else{
		echo "Data gagal dihapus";
	}

?>
<p><a href="index.php?halaman=laporanpemesan"><u>Kembali</u></a></p>