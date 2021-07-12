<?php
    require_once('conexao.php');
?>


<!DOCTYPE html>

<html lang="pt-br">
    
    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <link rel="stylesheet" href="styles/style_main.css">
        <link rel="stylesheet" href="styles/noticias.css">
        <link rel="shortcut icon" href="images/logos/logo-pet_png.png" type="image/x-icon">
        
        <title>Notícias - PET</title>
    </head>
    
    <body>
        <!-- ------------------------------------------------------------------------------------ -->

        <!-- INÍCIO DO HEADER -->
        <header>
            <div class="container">     
                <a class="logo" href="./index.html">
                    <img src="./images/logos/logo-pet_png.png" alt="Logo PetComp">
                    <div class="texto-logo">
                        <div class="pet">PET</div>
                        <div class="comp">COMP</div>
                    </div>
                </a>

                <div class="menu-section">

                    <div class="menu-toggle">
                        <i class="fas fa-bars" id="toggle-button"></i>
                    </div>
                    <nav class="navbar-home" >
                        <ul>
                            <!-- --------------------------------------------------- -->
                            <li>
                                <a href="./sobre.html">Sobre Nós</a>
                            </li>
                            <!-- --------------------------------------------------- -->
                            <li>
                                <a href="./publicacoes.php">Publicações</a>
                            </li>
                            <!-- --------------------------------------------------- -->
                            <li>
                                <a href="./noticias.php">Notícias</a>
                            </li>
                            <!-- --------------------------------------------------- -->
                            <li>
                                <a href="./biblioteca.html">Biblioteca</a>
                            </li>
                            <!-- --------------------------------------------------- -->
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- FIM DO HEADER -->

        <!-- INICIO DO MAIN -->
        <main>

            <div id="cont">
                <h2>Notícias</h2>
            </div>
            
            <!-- Printando conteudos -->
            <?php

            mysqli_select_db($mysqli, $database) or die("Could not select database");

            $query = "SELECT * FROM noticias";
            $result = mysqli_query($mysqli, $query);
            $num_results = mysqli_num_rows($result);
            
            if($num_results > 0) {
                
                for($i=0; $i<$num_results; $i++) {
                    $row = mysqli_fetch_array($result);
                    
                    ?>  
                        <div class="container">
                            <div class="noticia">
                                <h2 class="noticia-titulo"><?php echo(utf8_encode(htmlspecialchars_decode($row['titulo'])));?></h2>
                                <p class="noticia-resumo"><?php echo((utf8_encode(htmlspecialchars_decode($row['resumo']))));?></p>
                                <p class="noticia-data"><?php print_r($row['data_publicacao']);?></p>
                                <br>
                            </div>
                        </div>
                        
            <?php
                }//fim do for
            }//fim do if
            ?>

            <!-- Printando conteudos -->
        </main>
         <!-- FIM DO MAIN -->
        
        <!-- INICIO DO FOOTER -->
        <footer>
            <div class="logos-footer">
                <img src="./images/logos/ufma.png" class="logo-ufma" alt="logo ufma">
                <img src="./images/logos/logo-pet_png.png" class="logo-pet" alt="logo pet">
            </div>
                
            <div class="projetos-footer">   
                <div class="titulo-projetos">
                    <h4>Projetos</h4>
                    <ul>
                        <li><a href="">Podcomp</a></li>
                        <li><a href="">Monitorias</a></li>
                        <li><a href="">Integrantes</a></li>
                        <li><a href="">Fotos</a></li>
                    </ul>
                </div>
                <div class="titulo-projetos">
                    <h4>Projetos</h4>
                    <ul>
                        <li><a href="">Podcomp</a></li>
                        <li><a href="">Monitorias</a></li>
                        <li><a href="">Integrantes</a></li>
                        <li><a href="">Fotos</a></li>
                    </ul>
                </div>
                <div class="titulo-projetos">
                    <h4>Projetos</h4>
                    <ul>
                        <li><a href="">Podcomp</a></li>
                        <li><a href="">Monitorias</a></li>
                        <li><a href="">Integrantes</a></li>
                        <li><a href="">Fotos</a></li>
                    </ul>
                </div>
            </div>

            <div class="redes-sociais-footer">
                <ul id="redes-sociais">
                    <!-- --------------------------------- -->
                    <li>
                        <a href="">
                            <i class="fab fa-facebook"></i>
                        </a>
                    </li>
                    <!-- --------------------------------- -->
                    <li>
                        <a href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </li>
                    <!-- --------------------------------- -->
                    <li>
                        <a href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <!-- --------------------------------- -->
                </ul>
            </div>

        </footer>
        <!-- FIM DO FOOTER -->
        <script src="./scripts/menu.js">
        </script>

        <!-- ------------------------------------------------------------------------------------ -->
    </body>

</html>