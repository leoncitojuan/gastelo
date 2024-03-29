
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Highdmin - Responsive Bootstrap 4 Admin Dashboard</title>
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
                                Modificar producto
                            <div class="row">
                                <div class="col-12">
                                    <div class="p-20">
                                        <form class="form-horizontal" role="form" action="Servlet_Prod" method="post" id="frmModificarProd">
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">Codigo producto </label>
                                                    <input type="hidden" name="txtCodigo" value="<%=p.getCodigoP() %>">
                                                <div class="col-10">
                                                    <input type="text" class="form-control"   value="<%=p.getCodigoP() %>" readonly />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">Nombre CP :</label>
                                                <div class="col-10">
                                                    <input type="text" class="form-control"  name="txtNombreCP" id="txtNombreCP" value="<%=p.getClaseProducto() %>" size="30" maxlength="30" readonly />
                                                </div>
                                            </div>
                                            
                                            <div class="form-group row">
                                                <label class="col-2 col-form-label">Nombre MP :</label>
                                                <div class="col-10">
                                                    <input type="text" class="form-control" name="txtNombreMP" id="txtNombreMP" value="<%=p.getMarcaProducto() %>" size="30" maxlength="30" readonly />
                                                </div>
                                            </div>
                                                                                        
                                            <div class="form-group row">
                                                    <label class="col-2 col-form-label">Precio producto :                                                         :</label>
                                                    <div class="col-10">
                                                        <input type="text" class="form-control" name="txtPrecioP" id="txtPrecioP" value="<%=p.getPrecioP() %>" size="30" maxlength="30" readonly />
                                                    </div>
                                                </div>
                                            <div class="form-group row">
                                                    <label class="col-2 col-form-label">Imagen actual :	
                                                    </label>
                                                <div class="col-8">
                                                    <input class="col-2 col-form-label" type="radio" name="selected" value="SelectImagenActual" id="SelectImagenActual" checked="checked"> 
                                                    <input type="text" class="form-control" name="txtImagen" id="txtImagen" value="<%=p.getImagenP() %>" size="30" maxlength="30" readonly />
                                                </div>
                                              
                                            </div>
                                            <div class="form-group row">
                                                    <label class="col-2 col-form-label">Modificar imagen :	

                                                        </label>
                                                    <div class="col-8">
                                                        <input type="radio" name="selected" value="SelectModificarImagen" id="SelectModificarImagen"> 
                                                        <input  class="form-control"  type="file" name="txtModificarImagen" id="txtModificarImagen" size="30"  />
                                                    </div>
                                                  
                                                </div>  
                                                <button type="button"  name="btnCancelar" class="btn btn-danger waves-light waves-effect button" id="btnCancelar">Cancelar</button>
                                        <button type="button" name="btnGuardar" id="btnGuardar" class="button btn btn-success waves-light waves-effect">Guardar</button>
                                        <input type="hidden" name="accion" value="actualizar">
                                        </form>
                                    </div>
                                </div>
                            </div>                          
 
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