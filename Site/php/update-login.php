<?php 

include './bibli_bd.php';


ob_start();

isset($_REQUEST['DeviceID']) ? updateLogIn() : null; 
echo "test";
ob_end_flush();

function updateLogIn(){
	
	$DeviceID = $_POST['DeviceID'];
	$LogIn = $_POST['LogIn'];

    bd_Connecter();

    $sql= "UPDATE User SET UserLogin ='$LogIn' WHERE UserDevice = '$DeviceID'";
	$r = mysql_query($sql);
	/*$res = mysql_fetch_row($r);
	if ($res <= 0){
		$sql=mysql_query("INSERT INTO User (UserDevice, UserLogin) VALUES ('$DeviceID',0)");
		$UserId = mysql_insert_id();
	}else{
		$UserId = $res[0];
	}
	$date = date("Y-m-d");
	$heure = date("H:i:s");
	$sql = "INSERT INTO Connection (ConnectionDate, ConnectionHour, ConnectionUser) VALUES ('$date','$heure','$UserId')";
	$r = mysql_query($sql);*/
	echo "coucou";
    
    mysql_close();

}


?>