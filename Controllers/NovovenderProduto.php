<?php
require_once("../view/cabecalho.php");
require_once("conexao-banco.php");
if ((isset($_POST["id"])) && (isset($_POST["id"])=='id') ) {
    
   


    # code...
$nome  = $_POST["nome"];
$preco = $_POST["preco"];
$qtde = $_POST["qtde"];
$tg = $_POST["tg"];
$pv = trim($_POST["pv"]);
$qtdev = trim($_POST["qtdev"]);
$produtor = $_SESSION['nome'];
   
if ((empty($pv)) && (empty($qtdev)))  {
    $_SESSION["Errorv"] = "Todos os campos devem ser preenchidos ";
    header("location: ../view/404.php");
    # code...
}

else{



$sql     = " insert into produtos_omega( nome,Preco_producao,quantidade,total_gasto,Preco_Venda,quantida_Venda,total_venda,Total_Final,produtor) values(?,?,?,?,?,?,?,?,?)";
$sqlprep = $conexao->prepare($sql);
$total = $qtdev*$pv;
$totalf= $total-$tg;
$sqlprep->bind_param("sdiddidds" ,$nome,$preco,$qtde,$tg,$pv,$qtdev,$total,$totalf,$produtor);
if ($sqlprep->execute()) {
    header("location: ../view/gestao.php");
} else {

    header("location: ../view/404.php");

}
}
}
?>