<?php
//Buka koneksi dengan DBMS
$mysqli = new mysqli('localhost', 'root', '', 'cinema');
//Masih ingat $_GET yang digunakan pada form?
$id = $_GET['id'];
//Sql Select dengan kondisi
$sql = "select * from film where kd_film='$id'";
//Query seperti biasanya
$query = mysqli_query($mysqli, $sql);
//Cari sendiri di: http://php.net/manual/en/mysqli-result.fetch-assoc.php
$data= mysqli_fetch_assoc ($query);
?>

<div class="edit">
<form class="form-horizontal" enctype="multipart/form-data" action="pemroses-edit-film.php" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Kode Film</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="kd_film"  id=inputUsername" value="<?php echo $data['kd_film']; ?>" placeholder="Kode Film">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Judul</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="judul" id="inputPassword3" value="<?php echo $data['judul']; ?>" placeholder="Judul">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Sinopsis</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="sinopsis" id="inputPassword3" value="<?php echo $data['sinopsis']; ?>" placeholder="Sinopsis">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Rating</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="rating" id="inputPassword3" value="<?php echo $data['rating']; ?>" placeholder="Rating">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Kategori Usia</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="ket_usia" id="inputPassword3" value="<?php echo $data['ket_usia']; ?>" placeholder="Kategori Usia">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Kategori Film</label>
    <div class="col-sm-3">
		<select name="kd_kategori" class='form-control'>
		  <option value="1">Action</option>
		  <option value="2">Drama</option>
		  <option value="3">Komedi</option>
		  <option value="4">Horror</option>
		</select> 
    </div>
    </div>
  <div class="form-group">
    <label for="exampleInputFile" class="col-sm-2 control-label">Unggah Trailer</label>
    <input type="file" name="trailer" id="exampleInputFile">
  </div>
  <div class="form-group">
    <label for="exampleInputFile" class="col-sm-2 control-label">Unggah Gambar</label>
    <input type="file" name="gambar_film" id="exampleInputFile">
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-7">
      <button type="submit" class="btn btn-default">Edit</button>
    </div>
  </div>
</form>
</div>