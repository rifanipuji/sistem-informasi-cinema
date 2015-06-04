<div class="tiket">
<form class="form-horizontal" enctype="multipart/form-data" action="pemroses-upload.php" method="post">
  <div class="form-group">
	
    <label for="inputEmail3" class="col-sm-2 control-label">Kode Pemesanan</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="kd_pemesanan" id=inputkd_pemesanan" placeholder="kode pemesanan">
    </div>
  </div>
 <div class="form-group">
    <label for="exampleInputFile" class="col-sm-2 control-label">Unggah Bukti Transfer</label>
    <input type="file" name="file" id="exampleInputFile">
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">OK</button>
    </div>
  </div>
</form>
</div>