<?php 

include './bibli_bd.php';


ob_start();

//isset($_POST['DeviceID']) ? updatelogin() : null; 
$DeviceID = $_REQUEST['DeviceID'];
$LogIn = $_REQUEST['LogIn'];

echo "cocou",$DeviceID;

ob_end_flush();

function updatelogin(){
	
	$DeviceID = $_POST['DeviceID'];
	$LogIn = $_POST['LogIn'];

    bd_Connecter();

    $sql= "UPDATE User SET UserLogin ='$LogIn' WHERE UserDevice = '$DeviceID'";
	$r = mysql_query($sql);
	echo "<h1>coucou</h2>";
    
    mysql_close();

}


?>