<div class="laporan1">
<p><a href="index.php?halaman=laporan"><u>Kembali</u></a></p>
<div class="table-responsive">
  <table class="table table-striped table-bordered">
<!-- On cells (`th` or `th`) -->
	<tr>
	  <th>Kode Film</th>
	  <th>Judul</th>
	  <th>Sinopsis</th>
	  <th>Rating</th>
	  <th>Kategori Usia</th>
	  <th>Kategori Film</th>
	  <th>Trailer</th>
	  <th>Gambar</th>
	  <th>Opsi</th>
	</tr>
	
	
<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$sql="select * from film";	
	$query = mysqli_query($mysqli, $sql);
	while ($data=mysqli_fetch_array($query)) { ?>
	
	<tr>
	  <td><?php echo $data['kd_film'];?></td>
	  <td><?php echo $data['judul'];?></td>
	  <td><?php echo $data['sinopsis'];?></td>
	  <td><?php echo $data['rating'];?></td>
	  <td><?php echo $data['ket_usia'];?></td>
	  <td><?php echo $data['kd_kategori'];?></td>
	  <td><?php echo $data['trailer'];?></td>
	  <td><?php echo $data['gambar_film'];?></td>
	  
	  <td><a href="index.php?halaman=hapusfilm&id=<?php echo $data['kd_film'];?>" class="glyphicon glyphicon-trash">Hapus</a> | 
	  <a href="index.php?halaman=editfilm&id=<?php echo $data['kd_film'];?>" class=" glyphicon glyphicon-pencil">Edit</a>
	  
	</td>
	</tr>
	<?php } ?>
	
  </table>
  
</div>
</div>