<?php
require_once("../view/cabecalho.php");
if ( empty($_SESSION["id"]) ) {
  $_SESSION["ErrorLogin"] ="Usuario deslogado ";
  header('location: ../view/login.php');
  unset($_SESSION["id"] );
  unset($_SESSION["email"]) ;
  unset($_SESSION["nome"]) ;
}

#filipi


?>
