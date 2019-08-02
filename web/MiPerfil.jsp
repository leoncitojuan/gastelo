<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<!DOCTYPE html>

    <head>
        <meta charset="utf-8" />
        <title>Highdmin - Responsive Bootstrap 4 Admin Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <script src="assets/js/jquery.min.js"></script>
        <script type="text/javascript" src="js/MiPerfil.js"></script>
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
      
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
      <!--  <link type="text/css" rel="stylesheet" href="css/css1.css" />-->
        <script src="assets/js/modernizr.min.js"></script>

    </head>
      <%
        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    %>
    
 
<jsp:include page="menu.jsp" />

        <div class="wrapper">
            <div class="container-fluid">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                            <div class="btn-group pull-right">
                                <ol class="breadcrumb hide-phone p-0 m-0">
                                    <li class="breadcrumb-item"><a href="#">Highdmin</a></li>
                                    <li class="breadcrumb-item"><a href="#">UI Kit</a></li>
                                    <li class="breadcrumb-item active">Cards</li>
                                </ol>
                            </div>
                            <h4 class="page-title"> <h4>
                                                 <td colspan="5">
                            <h1>Bienvenido : <%=usu.getNombreUsuario() %>, <%=usu.getApellidosUsuario() %></h1>
                            
                    </td>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->

               <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                          
        <form action="Servlet_Usu" method="post" id="frmModificarUsuario">
            <table class="table" id="tablaModificarUsuario">
                <tr>
                    <th colspan="3">
                        <h1>Mi perfil</h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="hidden" name="txtCodigo" value="<%=usu.getCodigoUsuario() %>"> 
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Nombre : 
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getNombreUsuario() %> </dd>
                        <dd> <input type="text" name="txtNombre" id="txtNombre" class="campoOculto" value="<%=usu.getNombreUsuario() %>" size="30" maxlength="50"> </dd>
                        
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Apellidos : 
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getApellidosUsuario()%> </dd>
                        <dd> <input type="text" name="txtApellidos" id="txtApellido" class="campoOculto" value="<%=usu.getApellidosUsuario() %>" size="30" maxlength="50"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        DNI :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDniUsuario()%> </dd>
                        <dd> <input type="text" name="txtDni" id="txtDni" class="campoOculto" value="<%=usu.getDniUsuario() %>" size="30" maxlength="8"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Email :
                    </td>
                    <td>
                        <dd> <%=usu.getEmailUsuario()%> </dd>
                    </td>
                    <td>
                        <dd> <a href="ModificarEmail.jsp?codigoU=<%=usu.getCodigoUsuario() %>" class="Enlace">Cambiar email</a> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Contraseña :
                    </td>
                    <td>
                        <dd> ********** </dd>
                    </td>
                    <td>
                        <dd> <a href="ModificarContraseña.jsp?codigoU=<%=usu.getCodigoUsuario() %>" class="Enlace">Cambiar contraseña</a> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Departamento :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDepartamentoUsuario()%> </dd>
                        <dd> <input type="text" name="txtDepartamento" id="txtDepartamento" class="campoOculto" value="<%=usu.getDepartamentoUsuario() %>" size="30" maxlength="20"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Provincia :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getProvinciaUsuario()%> </dd>
                        <dd> <input type="text" name="txtProvincia" id="txtProvincia" class="campoOculto" value="<%=usu.getProvinciaUsuario() %>" size="30" maxlength="20"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Distrito :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDistritoUsuario()%> </dd>
                        <dd> <input type="text" name="txtDistrito" id="txtDistrito" class="campoOculto" value="<%=usu.getDistritoUsuario() %>" size="30" maxlength="20"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Direccion 1 :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDireccion1Usuario()%> </dd>
                        <dd> <input type="text" name="txtDireccion1" id="txtDireccion1" class="campoOculto" value="<%=usu.getDireccion1Usuario() %>" size="30" maxlength="50"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Direccion 2 :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDireccion2Usuario()%> </dd>
                        <dd> <input type="text" name="txtDireccion2" id="txtDireccion2" class="campoOculto" value="<%=usu.getDireccion2Usuario() %>" size="30" maxlength="50"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Telefono :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getTelefonoUsuario()%> </dd>
                        <dd> <input type="text" name="txtTelefono" id="txtTelefono" class="campoOculto" value="<%=usu.getTelefonoUsuario() %>" size="30" maxlength="9"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    
                </tr>
                <tr>
                    <td colspan="3" class="Botones">
                        <br>
           
                       <button type="button"  name="btnCancelar" id="btnCancelar"  class="btn btn-danger waves-light waves-effect">Cancelar</button>
                        <button type="button" name="btnModificar" id="btnModificar"  class="btn btn-success waves-light waves-effect">Modificar</button>
                        <button type="button" name="btnGuardar" id="btnGuardar" class="campoOculto btn btn-success waves-light waves-effect">Guardar</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    <input type="hidden" name="accion" value="modificarUsuario">
        </form>
                        </div> <!-- end card-box -->
                    </div><!-- end col -->
                </div>

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        2018 © Highdmin. - Coderthemes.com
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->


        <!-- jQuery  -->

        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    
