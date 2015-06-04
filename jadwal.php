<link rel="stylesheet" href="coba.css">

<!-- Example row of columns -->
<div class="container">
      <div class="row">
      <div class="coklat">
	  
	   <?php 
		
		$mysqli = new mysqli("localhost", "root", "", "cinema");
		$result = mysqli_query($mysqli,"select * from film");
		while ($row = mysqli_fetch_assoc($result)) {
			$kd_film=$row['kd_film'];
			$result1 = mysqli_query($mysqli,"select j.jam_tayang from detil_jadwal1 d inner join jadwal j on d.kd_jadwal=j.kd_jadwal where d.kd_film='$kd_film'");?>
			<div class="col-md-4">
			<b><font size="5" style="font-family:Open Sans" color="black" > <?php echo $row['judul'];?> </b></font><br><br>
			  
		<?php	
		while ($row1 = mysqli_fetch_assoc($result1)) {
				 echo $row1['jam_tayang']." "." "; } ?><br><br>
			  <b><a href="<?php echo $row['link'];?>" target="_blank"> Rating IMDB : </b><?php echo $row['rating'];?></a><br>
			  <b>Kategori Umur : </b><?php echo $row['ket_usia'];?><br>
			  <b>Senin s/d Kamis : </b>30000 <br>
			  <b>Jumat : </b>35000 <br>
			  <b>Sabtu & Minggu : </b>40000 <br><br>
			 
			  
			</div>
			
		<?php } ?>
		
		
		
      </div>
	  </div>
 </div>