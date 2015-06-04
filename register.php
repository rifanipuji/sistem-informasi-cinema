<div class="putih5">
<form class="form-horizontal" enctype="multipart/form-data" action="pemroses-insert.php" method="post">
  <div class="form-group">
	
    <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="username" id=inputUsername" placeholder="Username">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-7">
      <input type="password" class="form-control" name="password" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Nama</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="nama" id="inputPassword3" placeholder="Nama">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Alamat</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="alamat" id="inputPassword3" placeholder="alamat">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">E-mail</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="email" id="inputPassword3" placeholder="email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Usia</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="usia" id="inputPassword3" placeholder="Usia">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Jenis Kelamin</label>
    <div class="col-sm-1">
		<select name="jenis_kelamin" class='form-control'>
		  <option value="P">P</option>
		  <option value="L">L</option>
		</select> 
    </div>
  </div>
  <div class="form-group">
    <label for="exampleInputFile" class="col-sm-2 control-label">Unggah KTP</label>
    <input type="file" name="file" id="exampleInputFile">
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-7">
      <button type="submit" class="btn btn-default glyphicon glyphicon-file">Daftar</button>
    </div>
  </div>
</form>
</div>