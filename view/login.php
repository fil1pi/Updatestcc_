<?php
require_once('cabecalho.php');

?>
<link rel="stylesheet" href="../css/css.css">
<div class = "card" id="telalogin">
<div class = "card-body">

  <h1 class="font-italic">Siscul</h1>
<h3 class="font-italic">A nossa plataforma de gerenciamento!</h3>


                <form action = "../Controllers/Logar.php" method = "post">
                    
                
                <div class = "form-group">
 <br>
 
                        <p class="font-italic"> Login</p>
                       <p class="text-center text-danger">
                            <?php
                            if (isset($_SESSION["ErroLogin"]) ) {
                              # code...
                              $msgerro = $_SESSION["ErroLogin"];
                             echo "<div class='alert alert-danger' role='alert'> $msgerro </div>";
                             unset($_SESSION["ErroLogin"]);
                            }
                            
                            ?>

                       </p>
                        <label for  = "email"></label>
                        <input type = "text" class = " rounded-pill form-control" id = "email"name = "email" placeholder = "Email">
                    </div>
                    <div   class = "form-group">
                    <label for   = "senha"></label>
                    <input type  = "password" class = " rounded-pill form-control" id = "senha" name = "senha" placeholder = "Senha">
                    </div>
                    
                    <button type = "submit" class = "btn btn-outline-primary btn-lg btn-block" name = "butaum">Login</button>
                    <br>
                <br>
                </form>
                
                    <a href = "cadastro.php"><p>Ainda não possui conta ?</p></a>
                    

  </div>
</div>
<div id="aleatorio"></div>
<?php
require_once('footer.php');
?>