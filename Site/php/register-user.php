<?php 

include 'bibli_generale.php';
include 'bibli_bd.php';


$err = (isset($_POST['DeviceID'])) ? addUser() : 0;

session_start();

ob_start();

html_debut("registerUser", "");

html_fin();

ob_end_flush();

function addUser(){
	

	$co = bd_Connecter();

	$DeviceID = db_protect($co, $_POST['DeviceID']);
	$LogIn = db_protect($co, $_POST['LogIn']);

	$sql = "SELECT UserDevice FROM User WHERE UserDevice = '$DeviceID'";
	$res = mysqli_query($co, $sql) or fd_bd_erreur($co, $sql);
	$t =  mysql_num_rows($res);
	$last_id = mysqli_insert_id($res);

	if($t == 0){
		$sql2 = "INSERT INTO `User`(`UserDevice`, `UserLogin`) VALUES ('$DeviceID','$LogIn')";
		mysql_query($sql2);
	}else{
		$date = date("j/n/Y");
		$heure = date('h:i:s');
		$sql3 = "INSERT INTO `Connection`(`ConnectionDate`, `ConnectionHour`, `ConnectionUser`) VALUES ('$date','$heure','$last_id')";
	}



}


?>