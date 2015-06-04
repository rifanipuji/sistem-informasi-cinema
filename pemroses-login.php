<?php
	$mysqli = new mysqli("localhost", "root", "", "cinema");
	$username=$_POST['username'];
	$password=$_POST['password'];
	if ($username != "" && $password != ""){
		$sql = "select kd_member, username, password from member where username='$username' and password='$password'";
		$query = mysqli_query($mysqli, $sql);
		$ketemu = mysqli_num_rows($query);
		$data= mysqli_fetch_assoc ($query);
		if ($ketemu==1) {
			session_start();
			$_SESSION ["username"]=$username;
			$_SESSION ["kd"]=$data['kd_member'];
			header("location:index.php");
		} else{
			echo "username dan password salah";
		}
	}else{
		echo "dua-duanya harus diisi";
	}
?>