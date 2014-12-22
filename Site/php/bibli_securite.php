<?php

/**
 * Protection d'une chaine de caractères avant de l'enregistrer dans une base de données
 * @param 	connexion 	$co 	La connexion à la base de données
 * @param 	string 		$str 	La chaîne à protèger
 * @return 	string 				La chaîne protégée
 */
function fd_db_protect($co, $str) {

	// On enlève la protection automatique magic_quote_gpc
	(FD_QUOTES_GPC) && $str = stripslashes($str);
	$str = trim($str);
	return mysqli_real_escape_string($co, $str);
}



?>