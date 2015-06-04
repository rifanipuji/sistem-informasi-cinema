

<?php
//Buka koneksi dengan DBMS
$mysqli = new mysqli('localhost', 'root', '', 'cinema');
//$_POST yang biasanya
$id = $_POST['kd_film'];
$judul = $_POST['judul'];
$sinopsis = $_POST['sinopsis'];
$rating = $_POST['rating'];
$ket_usia = $_POST['ket_usia'];
$kd_kategori = $_POST['kd_kategori'];
$trailer=$_FILES['trailer']['name'];
$tmp_file=$_FILES['trailer']['tmp_name'];
$gambar=$_FILES['gambar_film']['name'];
$tmp_file1=$_FILES['gambar_film']['tmp_name'];

//Sql Select dengan kondisi
if ($id != "" && $judul != "" && $sinopsis != "" && $rating != "" && $ket_usia != "" && $kd_kategori != "" && $trailer !== "" && $gambar != ""){
	$sql = "UPDATE film SET judul = '$judul', sinopsis = '$sinopsis', rating = '$rating', ket_usia = '$ket_usia', kd_kategori='$kd_kategori',
	trailer='$trailer', gambar_film='$gambar'  WHERE kd_film = '$id'";
	$query = mysqli_query($mysqli, $sql);
	move_uploaded_file($tmp_file, 'trailer/'.$trailer);
	move_uploaded_file($tmp_file1, 'gallery/'.$gambar);
	echo "Data berhasil diperbarui";
	echo "$id";
} else{
	echo "Isilah data dengan lengkap";
}

?>

<p><a href="index.php?halaman=laporanfilm"><u>Kembali</u></a></p>