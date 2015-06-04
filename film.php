
      <!-- Example row of columns -->
      <div class="row">
	  <div class="putih">
	   <?php 
		
		$mysqli = new mysqli("localhost", "root", "", "cinema");
		$result = mysqli_query($mysqli,"select * from film");
		while ($row = mysqli_fetch_assoc($result)) {?>
		
			<div class="col-md-6">
			  <h2><font size="6" style="font-family:Open Sans" color="black"><?php echo $row['judul'];?></font></h2>
			  <p><?php echo $row['sinopsis'];?></p>
				<video width="320" height="240" controls>
				  <source src="trailer/<?php echo $row['trailer'];?>" type="video/mp4">
				  Your browser does not support the video tag.
				</video>
			</div>
			
		<?php } ?>
		
		
      </div>
      </div>
	  
	  