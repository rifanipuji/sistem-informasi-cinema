<div class="tiket">
<form class="form-horizontal" action="index.php?halaman=pemrosestiket" method="post">
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Judul Film</label>
    <div class="col-sm-6">
      <select name="kd_jadwal" class="form-control">
	  
	<option> --- Pilih Daftar Film --- </option>
	  
	   <?php 
		
		$mysqli = new mysqli("localhost", "root", "", "cinema");
		$sql="select f.kd_film, j.kd_jadwal, f.judul, j.jam_tayang, j.hari, j.HTM, d.studio from film f inner join detil_jadwal d on f.kd_film=d.kd_film inner join jadwal j on d.kd_jadwal=j.kd_jadwal";
		$result = mysqli_query($mysqli,$sql);
		$data= mysqli_fetch_assoc($result);
		while ($row = mysqli_fetch_assoc($result)) {?>
			<option value="<?php echo $row['kd_jadwal'];?>">
			<?php echo $row['judul'];?> | <?php echo $row['jam_tayang'];?> | <?php echo $row['hari'];?> | <?php echo $row['HTM'];?>
			| <?php echo $row['studio'];?></option>
			
		<?php } ?>
		</select> 
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Dipesan untuk Tanggal</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="datepicker" placeholder="tanggal">
      <input type="hidden" class="form-control" name="tanggal" id="datepickers">
      <input type="hidden" class="form-control" name="kd_film" value="<?php echo $data['kd_film'];?>">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Jumlah Tiket</label>
    <div class="col-sm-2">
		<select name="jml_tiket" class='form-control'>
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		</select> 
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value='Pesan'>
    </div>
  </div>
</form>
</div>