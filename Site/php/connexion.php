<?php

include 'bibli_generale.php';

session_start();

ob_start();

$connecte = ifconnect();

html_debut("ADMIN - Connexion", "../style/connect.css");

if($connecte==true){
	redirection('0', '../index.php');
}


?>
<section class="login">
    <div class="titulo">Staff Login</div>
    <form action="#" method="post" enctype="application/x-www-form-urlencoded">
        <input type="text" required title="Username required" placeholder="Username" data-icon="U">
        <input type="password" required title="Password required" placeholder="Password" data-icon="x">
        <div class="olvido">
            <div class="col"><a href="#" title="Recuperar Password">Fotgot Password?</a></div>
        </div>
        <a href="#" class="enviar">Submit</a>
    </form>
</section>
<?php


html_fin();

ob_end_flush();



?>