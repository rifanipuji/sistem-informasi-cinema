<div class="log">
<p><a href="index.php?halaman=laporan"><u><font color="black">Kembali</u></font></a></p>
<div class="table-responsive">
  <table class="table table-striped table-bordered">
<!-- On cells (`th` or `th`) -->
	<tr>
	  <th>Aktifitas</th>
	  <th>Waktu</th>
	  <th>User</th>
	</tr>
	
	
<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$sql="select * from log";	
	$query = mysqli_query($mysqli, $sql);
	while ($data=mysqli_fetch_array($query)) { ?>
	<tr>
	  <td><font color="black"><?php echo $data['aktifitas'];?></font></td>
	  <td><font color="black"><?php echo $data['waktu'];?></font></td>
	  <td><font color="black"><?php echo $data['user'];?></font></td>

	</tr>
	<?php }
?>
  </table>
  
</div>
</div>