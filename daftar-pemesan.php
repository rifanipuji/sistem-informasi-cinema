<?php
session_start();

$namap=$_POST['nama_pemesan'];
$kursih=$_POST['kursi_h'];
$kursia=$_POST['kursi_a'];
$tanggal=$_POST['tanggal'];
$jml_tiket=$_POST['jml_tiket'];
$kd_jadwal=$_POST['kd_jadwal'];
$kd_member=$_SESSION['kd'];
$kd_film=$_POST['kd_film'];
$kd_pemesanan=substr(md5(date('H:i:s')), 0,5);
$nama_file=$_FILES['file'];
$tmp_file=$_FILES['file'];


$mysqli = new mysqli("localhost", "root", "", "cinema");
$sql1="insert into tiket(kd_pemesanan, tanggal, jml_tiket, kd_jadwal, kd_member, kd_film) values('$kd_pemesanan', '$tanggal', '$jml_tiket', '$kd_jadwal', '$kd_member', '$kd_film')";
$query = mysqli_query($mysqli, $sql1);
$tiket_id= mysqli_insert_id ($mysqli);
$cari_film = "select j.HTM from jadwal j inner join tiket t on j.kd_jadwal=t.kd_jadwal where kd_tiket='$tiket_id'";
$query_film= mysqli_query($mysqli, $cari_film);
$total = mysqli_fetch_assoc ($query_film);
$total_harga = $total['HTM']*$jml_tiket;

$i=0;
$fileArray=array();
foreach($nama_file['name'] as $file){
	$fileArray[$i]['nama']=$file;
	$i++;
}

$i=0;
foreach($nama_file['tmp_name'] as $file){
	$fileArray[$i]['tmp_nama']=$file;
	$i++;
}

$i=0;
foreach($namap as $nama){ //perulangan yg tdk perlu syarat sesuai kondisi
$kursi_a=$kursia[$i];
$kursi_h=$kursih[$i];
$kursi_g=$kursi_a.$kursi_h;
$fileh=$fileArray[$i]['nama'];

	move_uploaded_file($fileArray[$i]['tmp_nama'], 'img/'.$fileArray[$i]['nama']);
	echo "Nama : $nama"."<br>";
	echo "Kursi : $kursi_h $kursi_a"."<br>";
	$sql="insert into pemesan(kd_tiket, nama_pemesan, nama_kursi, gambar) values('$tiket_id', '$nama', '$kursi_g', '$fileh')";
	$query = mysqli_query($mysqli, $sql);
	$i++;	
}
echo "Kode Pemesanan : $kd_pemesanan"."<br>";
echo "Total harga : $total_harga"."<br>";
?>
<p> simpan bukti pemesanan ini. Kode pemesanan digunakan saat mengunggah bukti transfer </p>
<p><a href="index.php?halaman=home"><u>Kembali</u></a></p>