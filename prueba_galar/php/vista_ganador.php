<?php
    session_start();
    if(isset($_SESSION["boleta"])){
        include("./info_usuario.php");
        //include("./encuesta_AX.php");
    }else{
    header("location:../html/login_ganador.html");
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="stylesheet" href="../css/footer.css">
    <script src="../JS/materialize.min.js"></script>
    
    <script>
        document.addEventListener('DOMContentLoaded',function(){
            M.AutoInit();
        });
    </script>

    <title>Ganador</title>
</head>
<body>
    <header>
        <div class="navbar-fixed">
            <nav class="pink darken-4">
                <div class="nav-wrapper container">
                    <a href="" class="brand-logo center">
                        <img class="responsive-img center" src="../img/logo_ipn.png">
                    </a>
                </div>
            </nav>
        </div>
        <div class="divider"></div><br>
    </header>
    <main>
        <div class="container">
            <div class="row">
                <div class="col s10 m10 l10">
                <img class="responsive-img" src="../img/logo_ipn_fb.png">
                </div>
                <div class="col s2 m2 l2">
                <?php
                    echo "<img class='responsive-img' src='../img/escudos/$infGetInfoEsc[4]'>";
                ?>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m12 l12">
                    <h6 class="right-align">
                        <?php echo "$infGetInfoEsc[1]" ?>
                    </h6>
                </div>
                <div class="col s12 m12 l12">
                    <h6>Bienvenido </h6> 
                </div>
                <div class="col s12 m12 l12">
                    <h6 class="flow-text">
                        <?php echo "$infGetEstudiante[2] $infGetEstudiante[3] $infGetEstudiante[4]"; ?>
                    </h6>
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
                            if($infGetEstudiante[9] != NULL  and $infGetEstudiante[9] != 0 ){  
                                echo "<th>Asistencia</th>";
                                echo "<th>Generar pdf</th>";
                            }
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><?php echo "$infGetEstudiante[2] $infGetEstudiante[3] $infGetEstudiante[4]"; ?></td>
                            <td><?php echo "$infGetInfoEvento[1]"; ?></td>
                            <td><?php echo "$infGetInfoEvento[3]"; ?></td>
                            <?php  
                                if($infGetEstudiante[9] != NULL  and $infGetEstudiante[9] != 0){
                            ?>
                                <td>Confirmado</td>
                                <td><img src="../img/logo_ipn_st.png" class="responsive-img"></td>
                            <?php
                                }
                            ?>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="show-on-medium">
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
            <?php
            if($infGetEstudiante[9] == 0 or $infGetEstudiante[9] == NULL ){
        ?>
        <form id="formUAO" autocomplete="off">
            <div class="row">
                <h6>
                    Importante.
                </h6>
                <p>
                    Es importante que especifique si llevará a algún invitado al evento y si es que cuenta con alguna discapacidad,
                    si es el caso escriba concretamente lo que necesitará para poder acudir al evento.
                </p>
            <div class="input-field col s12 m6 l6">
                <i class="fa-solid fa-people-robbery prefix"></i>
                <select id="uao1" name="uao1">
                <option value="">--- Seleccionar ---</option>
                <option value="1">Invitados</option>
                </select>
                <label for="uao1">UA Optativa 1</label>
            </div>
            <div class="input-field col s12 m6 l6">
                <i class="fa-solid fa-wheelchair-move prefix"></i>
                <select id="uao2" name="uao2">
                <option value="">--- Seleccionar ---</option>
                <option value="1">Incapacidad</option>
                </select>
                <label for="uao2">UA Optativa 2</label>
            </div>
            <div class="col s12 input-field">
                <button type="submit" class="btn blue" style="width:100%">Registrar</button>
            </div>
            </div>
        </form>
        <?php
            }
        ?>

            <div class="row">
                <div class="fixed-action-btn">
                    <a class="btn-floating btn-large pink darken-4">
                        <i class="large material-icons">menu</i>
                    </a>
                    <ul>
                    <?php
                        if($infGetEstudiante[9] != NULL  and $infGetEstudiante[9] != 0 ){  
                    ?>
                        <li><a class="btn-floating pink darken-2"><i class="material-icons">attach_file</i></a></li>
                        <li><a class="btn-floating pink darken-2"><i class="material-icons">mail_outline</i></a></li>
                    <?php
                    }
                    ?>
                        <li><a class="btn-floating pink darken-2" href="./cerrarSesion.php?nombreSesion=boleta&tiposesion=tipousuario&id=id"><i class="material-icons" >logout</i></a></li>
                    </ul>
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