<div class="row">
<?php 
		
		$mysqli = new mysqli("localhost", "root", "", "cinema");
		$judul=$_POST['judul_f'];
		$result = mysqli_query($mysqli,"select gambar_f, judul_f, sinopsis_f, kategori_f, rating_f, usia_f, status  from film_all where judul_f like '%$judul%'");
		while ($row = mysqli_fetch_array($result)) {?>
			<div class="col-md-4">
				<img src="gallery/<?php echo $row['gambar_f'];?>"/>
			  <h2><b>Judul : </b><?php echo $row['judul_f'];?></h2>
			  <p><b>Sinopsis : </b><?php echo $row['sinopsis_f'];?></p>
			  <p><b>Kategori : </b><?php echo $row['kategori_f'];?></p>
			  <p><a href="http://www.imdb.com/" target="_blank"> <b>Rating IMDB : </b></a> <?php echo $row['rating_f'];?></p>
			  <p><b>Kategori Usia : </b><?php echo $row['usia_f'];?></p>
			  <p><b>Status film : </b><?php echo $row['status'];?></p>
			</div>
			
		<?php } ?>
		
</div>