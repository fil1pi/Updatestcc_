<?php
require_once("../view/cabecalho.php");
if (isset($_SESSION["email"]) == false && isset($_SESSION["id"]) == false) {
  $_SESSION["errorLogin"] ;
  header('location: ../view/login.php');
}


?>
