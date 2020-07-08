<?php
require_once("../view/cabecalho.php");
require_once("conexao-banco.php");

if ((isset($_POST["id"])) && (isset($_POST["id"])=='id') ) {
    
   


    # code...

$nome  = trim($_POST["nome"]);
$senha = trim($_POST["senha"]);

$email = trim($_POST["email"]);

if (empty($nome)) {
    $_SESSION["ErrorCadas"] = "Todos os campos devem ser preenchidos ";
    header("location: ../view/Cadastro.php");
    # code...
}else if ((empty($senha)) && empty($email)) {

     $_SESSION["ErrorCadas"] = "Todos os campos devem ser preenchidos ";
    header("location: ../view/Cadastro.php");
}else{










$sql     = "insert into usuarios( email,senha,nome) values(?,?,?)";
$sqlprep = $conexao->prepare($sql);
$sqlprep->bind_param("sss" ,$email,$senha,$nome);
if ($sqlprep->execute()) {
    header("location: ../view/login.php");
} else {
    header("location: ../view/404.php");
}
}
}

?>
