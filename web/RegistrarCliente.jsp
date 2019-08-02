<%-- 
    Document   : RegistrarCliente
    Created on : 29-sep-2015, 23:27:45
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="assets/js/jquery.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
      <!--  <link type="text/css" rel="stylesheet" href="css/css1.css" />-->
        <script src="assets/js/modernizr.min.js"></script>

    </head>
    
    <body>
     <jsp:include page="menu.jsp" />
        <!-- End Navigation Bar-->
         <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
        <div class="wrapper">
            <div class="container-fluid">
               <div class="row">
                    <div class="col-12">
                        <div class="card-box">
        <form name="frm" action="Servlet_Usu" method="post" id="frmRegistrarUsuario" class="form-horizontal">
            <input type="hidden" name="accion" value="registrar">        
                        <h1>Registrate ahora</h1>
                    
           <div class="form-group row">
                <label class="col-2 col-form-label">Nombre</label>
                <div class="col-10">
                    <input type="text" name="txtNombres" id="txtNombre"  class="form-control" 
                           placeholder="Nombre...">
                </div>
            </div>
           <div class="form-group row">
                <label class="col-2 col-form-label">Apellidos</label>
                <div class="col-10">
                    <input type="text" name="txtApellidos" id="txtApellido"  class="form-control"  placeholder="Apellidos">
                </div>
            </div>    
            <div class="form-group row">
                <label class="col-2 col-form-label">DNI</label>
                <div class="col-10">
                    <input type="text" name="txtDni" id="txtApellido"  class="form-control" 
                           placeholder="DNI">
                </div>
            </div>    
            <div class="form-group row">
                <label class="col-2 col-form-label">Email :</label>
                <div class="col-10">
                    <input type="text" name="txtEmail" id="txtEmail"   class="form-control" 
                           placeholder="Correo electronico">
                </div>
            </div>   
             <div class="form-group row">
                <label class="col-2 col-form-label">Confirmar Email : </label>
                <div class="col-10">
                    <input type="text" name="txtConfirmarEmail" id="txtConfirEmail"   class="form-control" 
                           placeholder="Confirmar Email">
                </div>
            </div>   
             <div class="form-group row">
                <label class="col-2 col-form-label">Departamento : </label>
                <div class="col-10">
                    <input type="text" name="txtDepartamento" id="txtDepartamento"  class="form-control" 
                           placeholder="Departamento">
                </div>
            </div> 
             <div class="form-group row">
                <label class="col-2 col-form-label">Provincia : </label>
                <div class="col-10">
                    <input type="text"  name="txtProvincia" id="txtProvincia"   class="form-control" 
                           placeholder="Provincia">
                </div>
            </div> 
            <div class="form-group row">
                <label class="col-2 col-form-label">   Distrito :  </label>
                <div class="col-10">
                    <input type="text"   name="txtDistrito" id="txtDistrito"    class="form-control" 
                           placeholder="Distrito">
                </div>
            </div> 
            <div class="form-group row">
                <label class="col-2 col-form-label">   Direccion 1 :  </label>
                <div class="col-10">
                    <input type="text"  name="txtDireccion1" id="txtDireccion1"   class="form-control" 
                           placeholder="Direccion 1">
                </div>
            </div> 
            <div class="form-group row">
                <label class="col-2 col-form-label">   Direccion 2 :  </label>
                <div class="col-10">
                    <input type="text" name="txtDireccion2" id="txtDireccion2"  class="form-control" 
                           placeholder="Direccion 2">
                </div>
            </div> 
            <div class="form-group row">
                <label class="col-2 col-form-label">   Telefono :   </label>
                <div class="col-10">
                    <input type="text" name="txtTelefono" id="txtTelefono"  class="form-control" 
                           placeholder="Telefono o Celular">
                </div>
            </div> 
            <div class="form-group row">
                <label class="col-2 col-form-label"> Usuario :    </label>
                <div class="col-10">
                    <input type="text" name="txtUsuario" id="txtUsuario"   class="form-control" 
                           placeholder="Cree un usuario">
                </div>
            </div> 
             <div class="form-group row">
                <label class="col-2 col-form-label"> Contraseña :    </label>
                <div class="col-10">
                    <input  type="password" name="txtClave" id="txtClave"    class="form-control" 
                           placeholder="Cree una contraseña">
                </div>
            </div> 
             <div class="form-group row">
                <label class="col-2 col-form-label">  Confirmar contraseña :     </label>
                <div class="col-10">
                    <input  type="password"  name="txtConfirmarClave" id="txtConfirClave"
                            class="form-control" 
                           placeholder="Confirme su contraseña">
                </div>
            </div>
              <div class="form-group row">
            
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="text-right m-t-30">
                                            <button type="submit" class="btn btn-success waves-effect waves-light"
                                                    name="btnRegistrar" id="btnRegistrar">
                                                guardar usuario
                                            </button>
                                            <button type="button" class="btn btn-light waves-effect"
                                                    name="btnCancelar" id="btnCancelar">Cancelar
                                            </button>
                                        </div>
                                    </div>
                                </div>
            </div>      
        </form>
                        </div> <!-- end card-box -->
                    </div><!-- end col -->
                </div>
            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


    </body>
</html>
