
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <script src="assets/js/jquery.min.js"></script>
             <script type="text/javascript" src="js/ModificarProd.js"></script>
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
        Producto p = Producto_DB.listarProductoPorCodigo(request.getParameter("codigoP"));
    %>
    <body >

     <jsp:include page="menu.jsp" />
        <!-- End Navigation Bar-->
        <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>

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
                          
                              
        <form id="frmAdministrador">
            <table id="tablaAdministrador">
                <tr>
                    <th colspan="5">
                        <h2> Menu administrador </h2>
                    </th>
                </tr>
                <tr>
                    <th>
                        Registrar nuevo
                    </th>
                    <th>
                        Registros habilitados
                    </th>
                    <th>
                        Registros inhabilitados
                    </th>
                    <th>
                        Pedidos realizados
                    </th>
                    <th>
                        Mi catalogo
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarClaseProducto.jsp" class="link">Clase producto</a>
                    </td>
                    <td>
                        <a href="MostrarCP.jsp" class="link">Clase producto</a>
                    </td>
                    <td>
                        <a href="MostrarCPEliminados.jsp" class="link">Clase producto</a>
                    </td>
                    <td>
                        <a href="MostrarVenta.jsp" class="link">Ir a ventas</a>
                    </td>
                    <td>
                        <a href="Catalogo.jsp" class="link">Ir a catalogo</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarMarcaProducto.jsp" class="link">Marca producto</a>
                    </td>
                    <td>
                        <a href="MostrarMP.jsp" class="link">Marca producto</a>
                    </td>
                    <td>
                        <a href="MostrarMPEliminados.jsp" class="link">Marca producto</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarProducto.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        <a href="MostrarProducto.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        <a href="MostrarProductosEliminados.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <a href="MostrarUsuario.jsp" class="link">Usuario</a>
                    </td>
                    <td>
                        <a href="MostrarUsuarioEliminado.jsp" class="link">Usuario</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
            </table>
        </form>
        
                            <!-- end row -->
                        </div> <!-- end card-box -->
                    </div><!-- end col -->
                </div>
                <!-- end row -->

                <!-- end row -->

                <!-- end row -->

                <!-- end row -->


           







                <!-- end row -->

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

    </body>
</html>