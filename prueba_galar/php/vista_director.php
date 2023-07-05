<?php
   session_start();
   if(isset($_SESSION["boleta"])){
        include("./info_usuario.php");
   }else{
    header("location:../html/login_director.html");
   }
?>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/materialize.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../css/footer.css">
    <script src="../JS/materialize.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded',function(){
            var elems=document.querySelectorAll('.slider');
            var instances=M.Slider.init(elems,{
                height:330,
                interval:2500,
                });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded',function(){
            M.AutoInit();
        });
    </script>
    <title>Director</title>
</head>
<body>
    <header>
        <div class="navbar-fixed">
            <nav class="pink darken-4">
                <div class="nav-wrapper container">
                    <a href="#!" class="brand-logo center">
                        <img class="responsive-img center" src="../img/logo_ipn.png">
                    </a>
                </div>
            </nav>
        </div>
        <div class="row">
            <img class="responsive-img" src="../img/banner.fw.png">
        </div>
        <div class="divider"></div><br>
    </header>
    <main>
        <div class="container">
            <div class="row">
                <div class="col s10 m10 l10">
                    <img src="../img/logo_ipn_fb.png" class="responsive-img">
                </div>
                <div class="col s2 m2 l2">
                    <div class="section">
                        <a href="./cerrarSesion.php?nombreSesion=boleta&tiposesion=tipousuario&id=id" class="btn pink darken-4 waves-effect waves-light" type="submit" style="width: 100%;">
                            Salir
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m12 l12">
                    <h6 class="flow-text">
                    Bienvenido <?php echo "$infGetEstudiante[2] $infGetEstudiante[3] $infGetEstudiante[4]"; ?> 
                    </h6>
                    <p> <?php echo "$infGetInfoEsc[1]" ?></p>
                </div>
            </div>
            <div class="row">
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Premio</th>
                            <th>Información del Evento</th>
                            <?php  
                            if($infGetEstudiante[9] != NULL ){  
                                echo "<th>Confirmar asistencia</th>";
                                echo "<th>Generar pdf</th>";
                            }
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                          while($filas = mysqli_fetch_array($resGetAlumnoEsc)){
                                //print_r($filas);
                                echo "<tr>";
                                echo "<td>$filas[7] $filas[8] $filas[9]</td>";
                                echo "<td>$filas[17]</td>";
                                echo "<td>$filas[19]</td>";
                                echo "</tr>";  
                            }
                        ?>
                        <tr>
                            <?php  
                                if($infGetEstudiante[9] != NULL  or $infGetEstudiante[9] != 0){
                            ?>
                                <td>Confirmado</td>
                                <td><img src="../img/logo_ipn_st.png" class="responsive-img"></td>
                            <?php
                                }
                            ?>
                            
                        </tr>
                    </tbody>
                </table>
                <div class="hide-on-large-only">
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer-containerf">
            <div class="footer-content-containerf">
                <h3 class="website-logo">DMP</h3>
                <span class="footer-info">Correo electrónico:</span>
                <span class="footer-info">cgdbp@ipn.mx</span>
            </div>
            <div class="footer-menus">
                <div class="footer-content-containerf">
                    <span class="menu-title">menu</span>
                    <a href="" class="menu-item-footer">Home</a>
                    <a href="" class="menu-item-footer">Courses</a>
                    <a href="" class="menu-item-footer">Testimonials</a>
                </div>
                <div class="footer-content-containerf">
                    <span class="menu-title">legal</span>
                    <a href="" class="menu-item-footer">Privacy Policy</a>
                    <a href="" class="menu-item-footer">Cookies</a>
                    <a href="" class="menu-item-footer">Legal Advice</a>
                </div>
            </div>
            
            <div class="footer-content-containerf">
                <span class="menu-title">Siguenos</span>
                <div class="social-containerf">
                    <a href="#" class="social-link"></a>
                    <a href="#" class="social-link" :nth-of-type(1)></a>
                    <a href="#" class="social-link" :nth-of-type(2)></a>
                    <a href="#" class="social-link" :nth-of-type(3)></a>
                </div>
            </div>
        </div>
        <div class="copyright-containerf">
            <span class="copyright">Copyright 2021, itskrey.com. All rights reserved.</span>
        </div>
    </footer>
</body>
</html>