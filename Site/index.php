<?php

include './php/bibli_generale.php';

session_start();

ob_start();

$connecte = ifconnect();

html_debut("coucou", "");

if($connecte==false){
	redirection('0', 'php/connexion.php');
}




html_fin();


ob_end_flush();



?>