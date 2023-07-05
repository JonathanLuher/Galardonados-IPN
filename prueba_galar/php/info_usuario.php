<?php
  include("./configBD.php");

  $id = $_SESSION["id"];
  $tipo_usuario = $_SESSION["tipousuario"];
  $optsUAO = "";
  $lisUAO = "";

  $sqlGetEstudiante = "SELECT * FROM datos_usuario WHERE id_usuario = '$id'";
  //echo $sqlGetEstudiante;
  $resGetEstudiante = mysqli_query($conexion, $sqlGetEstudiante);
  $infGetEstudiante = mysqli_fetch_row($resGetEstudiante);
  //print_r($infGetEstudiante);

  $sqlGetInfoEvento = "SELECT * FROM galardonados_cat,datos_usuario WHERE id_usuario = '$id' and galardonados_cat.id_galardonado = datos_usuario.galardonado ";
  //echo $sqlGetInfoEvento;
  $resGetInfoEvento = mysqli_query($conexion, $sqlGetInfoEvento);
  $infGetInfoEvento = mysqli_fetch_row($resGetInfoEvento);
  //print_r($infGetInfoEvento);

  $sqlGetInfoEsc = "SELECT * FROM escuela_cat,datos_usuario WHERE id_usuario = '$id' and datos_usuario.escuela = escuela_cat.id_escuela ";
  //echo $sqlGetInfoEsc;
  $resGetInfoEsc = mysqli_query($conexion, $sqlGetInfoEsc);
  $infGetInfoEsc = mysqli_fetch_row($resGetInfoEsc);
  //print_r($infGetInfoEsc);
  if( $tipo_usuario == 2){
    $sqlGetAlumnoEsc = "SELECT * FROM escuela_cat,datos_usuario,galardonados_cat WHERE datos_usuario.escuela = escuela_cat.id_escuela  and galardonados_cat.id_galardonado = datos_usuario.galardonado and datos_usuario.escuela = '$infGetEstudiante[5]' and datos_usuario.id_usuario != '$id'";
    // echo $sqlGetInfoEsc;
    $resGetAlumnoEsc = mysqli_query($conexion, $sqlGetAlumnoEsc);
    //$infGetalumnosescuela = mysqli_fetch_row($resGetAlumnoEsc);
    //while($filas = mysqli_fetch_array($resGetAlumnoEsc)){
    //print_r($filas);  
    //}
    //print_r($infGetInfoEsc);
  }
  
  $sqlInsRegistro = "UPDATE datos_usuario SET asistencia = 1 WHERE id_usuario=$id";
	$resInsRegistro = mysqli_query($conexion,$sqlInsRegistro);
?>