<div class="laporan">
<p><a href="index.php?halaman=laporan"><u>Kembali</u></a></p>
<div class="table-responsive">
  <table class="table table-striped table-bordered">
<!-- On cells (`th` or `th`) -->
	<tr>
	  <th>Nama Member</th>
	  <th>Nama Pemesan</th>
	  <th>Nama Kursi</th>
	  <th>Tanggal</th>
	  <th>Judul</th>
	  <th>Jam Tayang</th>
	  <th>Gambar</th>
	  <th>Opsi</th>
	</tr>
	
	
<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$sql="select p.kd_pemesan, m.nama, p.nama_pemesan, p.nama_kursi, t.tanggal, f.judul, j.jam_tayang, p.gambar
			from tiket t inner join member m on t.kd_member=m.kd_member inner join jadwal j on t.kd_jadwal=j.kd_jadwal 
			inner join film f on t.kd_film=f.kd_film inner join pemesan p on p.kd_tiket=t.kd_tiket";	
	$query = mysqli_query($mysqli, $sql);
	while ($data=mysqli_fetch_array($query)) { ?>
	<tr>
	  <td><?php echo $data['nama'];?></td>
	  <td><?php echo $data['nama_pemesan'];?></td>
	  <td><?php echo $data['nama_kursi'];?></td>
	  <td><?php echo $data['tanggal'];?></td>
	  <td><?php echo $data['judul'];?></td>
	  <td><?php echo $data['jam_tayang'];?></td>
	  
	  
	<td>
	 <?php
		if(!empty($data['gambar'])){?>
			<img src="img/<?php echo $data['gambar'];?>" width="200px">
		<?php
		
		}
		
	  ?>
	  <td><a href="hapus-pemesan.php?id=<?php echo $data['kd_pemesan'];?>" class="glyphicon glyphicon-trash">Hapus</a>
	</td>
	</tr>
	<?php }
?>
  </table>
  
</div>
</div>