<?php
	session_start();
	include("./configBD.php");
	
	$boleta = $_POST["boleta"];
	$password = $_POST["password"];
	$tipo_user = $_POST["tipousuario"];
	//echo $boleta + "" +$password;
	$usuarioArray = array('admin' ,"director", 'galardonado');
	$vistaArray = array('../php/vista_admin.php' ,"../php/vista_director.php", '../php/vista_ganador.php');
	$respAX = [];
	#
	$sqlGetEstudiante = "SELECT * FROM usuarios WHERE boleta = '$boleta' AND contraseña = '$password'";
	
	$resGetEstudiante = mysqli_query($conexion, $sqlGetEstudiante);
	$infGetEstudiante = mysqli_fetch_row($resGetEstudiante);
	//print_r($infGetEstudiante);
	if(mysqli_num_rows($resGetEstudiante) == 1){

	if ($infGetEstudiante[3] == $tipo_user){
		$respAX["cod"] = 1;
		$respAX["title"]="Login ".$usuarioArray[$tipo_user-1];
		$respAX["msj"] = "Bienvenido!";
		$respAX["icono"] = "success";
		$respAX["vista"] = $vistaArray[$tipo_user-1];
		$_SESSION["boleta"] = $infGetEstudiante[1];
		$_SESSION["id"] = $infGetEstudiante[0];
		$_SESSION["tipousuario"] = $infGetEstudiante[3];
	}else{
		$respAX["cod"] = 0;
		$respAX["title"]="Formulario erroneo";
		$respAX["msj"] = "Login incorrecto dirigirse al login correspondiente";
		$respAX["icono"] = "error";
		}
	}else{
	$respAX["cod"] = 0;
	$respAX["title"]="Error";
	$respAX["msj"] = "Datos incorrectos";
	$respAX["icono"] = "error";
	}
	echo json_encode($respAX);

	$sqlInsLogin = "UPDATE datos_usuario SET auditoria = NOW() 
	WHERE id_usuario IN(SELECT id_usuario FROM usuarios WHERE boleta = $boleta)";
	$resInsLogin = mysqli_query($conexion,$sqlInsLogin);
?>