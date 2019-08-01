
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="css/bootstrap.min.css" 
    >
    
    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="css/all.css">
    <link href="css/bootstrap4_1.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="js/jquery3_1_1.min.js"></script>
      <script type="text/javascript" src="js/Login.js"></script>
	<!--Custom styles-->
    <style>
    /* Made with love by Mutiullah Samim*/

@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 100%;
align-content: center;
}

.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
    </style>
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Inicio de sessìon</h3>
				
			</div>
                    <form method="post" action="Servlet_Usu" id="frmLogin">
			<div class="card-body">
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control textBox" 
                                                       placeholder="usuario"
                                                       name="txtUsuario" id="txtUsuario">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" 
                                                       class="form-control textBox" 
                                                       placeholder="contraseña" 
                                                       name="txtClave" 
                                                       placeholder="Ingrese contraseña"
                                                       
                                                       id="txtClave" />
					</div>
					<div class="form-group">
                                            <button type="button" id="btnIngresar" name="btnIngresar" class="btn float-right login_btn">acceder</button>
						 <input type="hidden" name="accion" value="login">
					</div>
				
			</div>
                        <div class="card-footer">
				<div class="d-flex justify-content-center links">
					 No tienes una cuenta?<a href="RegistrarCliente.jsp" id="lnkRegistrarUsuario" >Registrase</a>
				</div>
			</div>
                    </form>
		</div>
	</div>
</div>
<script src="js/bootstrap4_1_1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

</body>
</html>