$(document).ready(()=>{    
  var formArray = ['#form-login-admin' ,"#form-login-director", '#form-login-galardonado'];
  var form;
  var tipeuser;
  $.each(formArray,function(indexes,values){
    if($(values).length){
		form= values;
       	tipeuser= indexes+1;
      	//alert(form);
    }
  });
  
    const validaLogin = new JustValidate(form,{
      tooltip:{position:"bottom"}
    });
    
    validaLogin
      .addField("#boleta",[
        {rule:"required", errorMessage:"Falta tu boleta"},
        {rule:"number", errorMessage:"Solo números"},
        {rule:"minLength", value:8, errorMessage:"Mínimo 8 digitos"},
        {rule:"maxLength", value:10, errorMessage:"Máximo 10 digitos"}
      ])
      .addField("#password",[
        {rule:"required", errorMessage:"Falta tu contraseña"}//,
        //{rule:"minLength", value:18, errorMessage:"Formato incorrecto"},
        //{rule:"maxLength", value:18, errorMessage:"Formato incorrecto"}
      ])
      .onSuccess((e)=>{
        e.preventDefault();
        $.ajax({
          url:"../php/login_AX.php",
          method:"POST",
          data:$(form).serialize()+"&tipousuario="+tipeuser,
          cache:false,
          success:(respServ)=>{
            console.log(respServ);
            const AX = JSON.parse(respServ);
            Swal.fire({
              title:AX.title,
              text:AX.msj,
              icon:AX.icono,
              didDestroy:()=>{
                if(AX.cod == 1)
                  window.location.href=AX.vista;
                else
                  location.reload();
              }
            });
          }
        });
      });
  });