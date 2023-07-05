<?php
  session_start();
  $temp = $_REQUEST["nombreSesion"];
  $temp2 = $_REQUEST["tiposesion"];
  $temp3 = $_REQUEST["id"];
  $tipouser = $_SESSION[$temp2];
  echo $tipouser;
  unset($_SESSION[$temp]);
  unset($_SESSION[$temp2]);
  unset($_SESSION[$temp3]);
  $vistaArray = array('../html/login_admin.html' ,"../html/login_director.html", '../html/login_ganador.html');
  header("location:".$vistaArray[$tipouser-1]);
?>