<div class="laporan">
<p><a href="index.php?halaman=laporan"><u>Kembali</u></a></p>
<div class="table-responsive">
  <table class="table table-striped table-bordered">
<!-- On cells (`th` or `th`) -->
	<tr>
	  <th>Nama Member</th>
	  <th>Tanggal</th>
	  <th>Judul</th>
	  <th>Jam Tayang</th>
	  <th>Jumlah Tiket</th>
	  <th>HTM</th>
	  <th>Total Harga</th>
	  <th>Bukti Transfer</th>
	  <th>Opsi</th>
	</tr>
	
	
<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$sql="select t.kd_tiket, m.nama, t.tanggal, f.judul, j.jam_tayang, t.jml_tiket, j.HTM, jml_tiket*HTM as total, t.gambar_transfer
			from tiket t inner join member m on t.kd_member=m.kd_member inner join jadwal j on t.kd_jadwal=j.kd_jadwal 
			inner join film f on t.kd_film=f.kd_film";	
	$query = mysqli_query($mysqli, $sql);
	while ($data=mysqli_fetch_array($query)) { ?>
	<tr>
	  <td><?php echo $data['nama'];?></td>
	  <td><?php echo $data['tanggal'];?></td>
	  <td><?php echo $data['judul'];?></td>
	  <td><?php echo $data['jam_tayang'];?></td>
	  <td><?php echo $data['jml_tiket'];?></td>
	  <td><?php echo $data['HTM'];?></td>
	  <td><?php echo $data['total'];?></td>
	  
	  
	<td>
	 <?php
		if(!empty($data['gambar_transfer'])){?>
			<img src="img/<?php echo $data['gambar_transfer'];?>" width="200px">
		<?php
		
		}
		
	  ?>
	  <td><a href="hapus-tiket.php?id=<?php echo $data['kd_tiket'];?>" class="glyphicon glyphicon-trash">Hapus</a>
	</td>
	</tr>
	<?php }
?>
  </table>
  
</div>
</div>