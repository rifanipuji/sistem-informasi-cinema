<center>
<img src="img/sheet.jpg" width="400px" height:"400px" />
<p><B> Nomor 1 dimulai dari sebelah kiri </B></p>
</center> 

<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$jadwal=$_POST['kd_jadwal'];
	$tanggal=$_POST['tanggal'];
	$jml_tiket=$_POST['jml_tiket'];
	$kd_member=$_SESSION['kd'];
	$kd_film=$_POST['kd_film'];
?>


 <form class="form-horizontal" enctype="multipart/form-data" action="daftar-pemesan.php" method="post">
 <input type="hidden" name="tanggal" value="<?php echo $tanggal; ?>">
 <input type="hidden" name="kd_jadwal" value="<?php echo $jadwal; ?>">
 <input type="hidden" name="jml_tiket" value="<?php echo $jml_tiket; ?>">
 <input type="hidden" name="kd_member" value="<?php echo $kd_member; ?>">
 <input type="hidden" name="kd_film" value="<?php echo $kd_film; ?>">
 
 <?php 
 for ($i=1;$i<=$jml_tiket;$i++): 
 ?>
 <p><b><font color="white"> PEMESAN  <?php echo $i; ?> </font><b></p>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><b><font color="white">Nama Pemesan</font><b></label>
    <div class="col-sm-5">
      <input type="text" <?php if($i==1){ echo "value='{$session_username}'";}?> class="form-control" name="nama_pemesan[]" placeholder="nama">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><b><font color="white">Kursi</font><b></label>
    <div class="col-sm-5">
		<select name="kursi_h[]">
		  <option value="A">A</option>
		  <option value="B">B</option>
		  <option value="C">C</option>
		  <option value="D">D</option>
		  <option value="E">E</option>
		  <option value="F">F</option>
		  <option value="G">G</option>
		  <option value="H">H</option>
		  <option value="I">I</option>
		  <option value="J">J</option>
		  <option value="K">K</option>
		  <option value="L">L</option>
		</select> 
		<select name="kursi_a[]">
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option>
		  <option value="6">6</option>
		  <option value="7">7</option>
		  <option value="8">8</option>
		  <option value="9">9</option>
		  <option value="10">10</option>
		  <option value="11">11</option>
		  <option value="12">12</option>
		  <option value="13">13</option>
		  <option value="14">14</option>
		  <option value="15">15</option>
		  <option value="16">16</option>
		</select> 
    </div>
  </div>
   <div class="form-group">
    <label for="exampleInputFile" class="col-sm-2 control-label"><b><font color="white">Unggah KTP</font><b></label>
    <input type="file" name="file[]" id="exampleInputFile">
  </div>
  <?php endfor; ?>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value='OK'>
    </div>
  </div>
</form>