
<p><a href="index.php?halaman=laporan"><u><font color="white">Kembali</u></font></a></p>
<div class="table-responsive">
  <table class="table table-striped table-bordered">
<!-- On cells (`th` or `th`) -->
	<tr>
	  <th>Tanggal</th>
	  <th>Jumlah Pemasukan</th>
	</tr>
	
	
<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$sql="select tanggal, sum(total) as income from view_tiket where tanggal BETWEEN '2015-05-01' AND '2015-06-31'";	
	$query = mysqli_query($mysqli, $sql);
	while ($data=mysqli_fetch_array($query)) { ?>
	<tr>
	  <td><font color="white"><?php echo $data['tanggal'];?></font></td>
	  <td><font color="white"><?php echo $data['income'];?></font></td>

	</tr>
	<?php }
?>
  </table>
  
</div>