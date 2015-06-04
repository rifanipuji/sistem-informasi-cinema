
<!--img src="img/cinema.png" /-->

<?php 
session_start();

if(isset($_SESSION["username"])){
$session_username=$_SESSION["username"];	
}
?>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js" lang=""> <!--<![endif]-->
    <head>
		<title>Three D Cinema</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="jquery-ui.css">
        <style>
            body {
                padding-top: 0px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-theme.css">
		 <link href="carousel.css" rel="stylesheet">  
    <link href="coba.css" rel="stylesheet">  
        <link rel="stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
	
		
    <nav class="navbar navbar-default">
	  <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  <b><font size="6" style="font-family:Cooper Black" color="black"><a class="navbar-brand" href="index.php?halaman=home">Beranda</b></a></font>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav">
			<li><a href="index.php?halaman=film">Now Playing <span class="sr-only">(current)</span></a></li>
			<li><a href="index.php?halaman=jadwal">Jadwal <span class="sr-only">(current)</span></a></li>
			<?php if(isset($session_username) && $session_username!='admin'){?><li><a href="index.php?halaman=tiket">Tiket</a></li><?php } ?>
			<?php if(isset($session_username) && $session_username!='admin'){?><li><a href="index.php?halaman=upload">Upload</a></li><?php } ?>
			<?php if(isset($session_username) && $session_username=='admin'){?><li><a href="index.php?halaman=laporan">Laporan</a></li><?php } ?>
			<li><a href="index.php?halaman=comingsoon">Coming Soon</a></li>
			<li><a href="index.php?halaman=about">Tentang</a></li>
		  </ul>
		  <form class="navbar-form navbar-left" method="POST" action="cari.php">
			<div class="form-group">
			  <input type="text" name="judul_f" class="form-control" placeholder="Cari Judul">
			</div>
			<button type="submit" class="btn btn-default">Cari</button>
		  </form>
		  <ul class="nav navbar-nav navbar-right">
			<?php if(!isset($session_username)){?><li><a href="index.php?halaman=daftar">Daftar</a></li><?php } ?>
			<?php if(isset($session_username)){?><li><a href=index.php?halaman=daftar"><span class="glyphicon glyphicon-user"></span>Hai,<?php echo $session_username;?></a></li><?php } ?>
			<?php if(!isset($session_username)){?><li><a href="index.php?halaman=login">Masuk</a></li><?php } ?>
			<?php if(isset($session_username)){?><li><a href="index.php?halaman=keluar">Keluar</a></li><?php } ?>
			
		  </ul>
		</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	

    <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="container">
       
      </div>
   

    <div class="container">
		<?php 
		
		if(isset($_GET['halaman'])){
			if($_GET['halaman'] == 'home'){
				include ("home.php");
			}
			else if($_GET['halaman'] == 'tiket'){
				include ("tiket.php");
			}
			else if($_GET['halaman'] == 'jadwal'){
				include ("jadwal.php");
			}
			else if($_GET['halaman'] == 'film'){
				include ("film.php");
			}
			else if($_GET['halaman'] == 'login'){
				include ("login.php");
			}
			else if($_GET['halaman'] == 'daftar'){
				include ("register.php");
			}
			else if($_GET['halaman'] == 'keluar'){
				include ("logout.php");
			}
			else if($_GET['halaman'] == 'pemrosestiket'){
				include ("pemroses-tiket.php");
			}
			else if($_GET['halaman'] == 'upload'){
				include ("upload.php");
			}
			else if($_GET['halaman'] == 'pemrosesupload'){
				include ("pemroses-upload.php");
			}
			else if($_GET['halaman'] == 'laporan'){
				include ("laporan.php");
			}
			else if($_GET['halaman'] == 'about'){
				include ("about.php");
			}
			else if($_GET['halaman'] == 'laporanpemesan'){
				include ("laporan-pemesan.php");
			}
			else if($_GET['halaman'] == 'hapuspemesan'){
				include ("hapus-pemesan.php");
			}
			else if($_GET['halaman'] == 'laporantiket'){
				include ("laporan-tiket.php");
			}
			else if($_GET['halaman'] == 'hapustiket'){
				include ("hapus-tiket.php");
			}
			else if($_GET['halaman'] == 'cari'){
				include ("cari.php");
			}
			else if($_GET['halaman'] == 'laporanjual'){
				include ("laporan-jual.php");
			}
			else if($_GET['halaman'] == 'comingsoon'){
				include ("coming-soon.php");
			}
			else if($_GET['halaman'] == 'laporanfilm'){
				include ("laporan-film.php");
			}
			else if($_GET['halaman'] == 'editfilm'){
				include ("edit-film.php");
			}
			else if($_GET['halaman'] == 'hapusfilm'){
				include ("hapus-film.php");
			}
			else if($_GET['halaman'] == 'log'){
				include ("log.php");
			}
			else{
				include ("home.php");
			}
		}
		else{
			include ("home.php");
		}
		
		?>
       
	  
	  <footer>
        <p>&copy; Three D Cinema 2015</p>
      </footer>
	  
	  <marquee scrollamount="10"> <h2><font size="4" style="Elephant" color="white"> ---------- Terima kasih telah mengunjungi Three D Cinema ----------</font></marquee>
	  
    </div> <!-- /container -->       

        <script src="js/vendor/jquery-1.11.2.min.js"></script>
		<script src="jquery-ui.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
		<script>
		  $(function() {
			$( "#datepicker" ).datepicker({
				altField: "#datepickers",
				dateFormat: "DD, d MM, yy",
				altFormat: "yy-mm-d"
			});
			
		  });
		 </script>
		 
    </body>
</html>
