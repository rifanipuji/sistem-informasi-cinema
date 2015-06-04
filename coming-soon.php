<div class="row">
<div class="coming">
	
		<?php 
		
		$mysqli = new mysqli("localhost", "root", "", "cinema");
		$result = mysqli_query($mysqli,"select gambar_f, judul_f, sinopsis_f, kategori_f, rating_f, usia_f, status, trailer_f  from film_all where status='coming soon' ");
		while ($row = mysqli_fetch_array($result)) {?>
			<div class="col-md-6">
				<img src="gallery/<?php echo $row['gambar_f'];?>" width="200px" height="200px"/>
			  <font size="4" style="font-family:Open Sans" color="black"><h2><?php echo $row['judul_f'];?></h2></font>
			  <font size="4" style="font-family:Open Sans" color="black"><p><b>Sinopsis : </b></p></font>
			  <?php echo $row['sinopsis_f'];?>
			  <font size="4" style="font-family:Open Sans" color="black"><p><b>Kategori : </b><?php echo $row['kategori_f'];?></p></font>
			  <font size="4" style="font-family:Open Sans" color="black"><p><a href="http://www.imdb.com/" target="_blank"> <b>Rating IMDB : </b></a> <?php echo $row['rating_f'];?></p></font>
			  <font size="4" style="font-family:Open Sans" color="black"><p><b>Kategori Usia : </b><?php echo $row['usia_f'];?></p></font>
			  <font size="4" style="font-family:Open Sans" color="black"><p><b>Status film : </b><?php echo $row['status'];?></p></font>
			  <video width="320" height="240" controls>
				  <source src="trailer/<?php echo $row['trailer_f'];?>" type="video/mp4">
				  Your browser does not support the video tag.
				</video>
			</div>
			
		<?php } ?>

		</div>
		</div>