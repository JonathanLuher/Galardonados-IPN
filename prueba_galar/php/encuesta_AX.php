<?php

  include("./configBD.php");
  $boleta = $_POST["boleta"];
	$password = $_POST["password"];
	$tipo_user = $_POST["tipousuario"];
  $respAX = [];

  $sqlInsregistro = "UPDATE datos_usuario SET auditoria = NOW() WHERE boleta = '$boleta' ";
  $resInsregistro = mysqli_query($conexion, $sqlInsregistro);

?>