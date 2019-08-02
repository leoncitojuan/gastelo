

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
        <!-- App favicon -->
          <script type="text/javascript" src="js/ModificarMP.js"></script>
        <link rel="shortcut icon" href="assets/images/favicon.ico">
      
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
      <!--  <link type="text/css" rel="stylesheet" href="css/css1.css" />-->
        <script src="assets/js/modernizr.min.js"></script>

    </head>
   
 
    <body >
            <%
        // Obtenemos las variables del jsp MostrarCP (Dentro del boton modificar)
        String codigo = request.getParameter("codigoMP");
        String nombre = request.getParameter("nombreMP");
    %>
    

 
      <jsp:include page="menu.jsp" />
        <!-- End Navigation Bar-->
   

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
                            <h1>Bienvenido  </h1>
                            
                    </td>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->

               <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <form action="Servlet_MP" method="post" name="frm" id="frmModificarMP">
                                <div class="form-group row">
                                                <label class="col-2 col-form-label">Codigo :</label>
                                                <div class="col-10">
                                                    <input type="text" class="form-control" value=" <%=codigo %>"
                                                           name="txtCodigo" value="<%=codigo %>"
                                                    readonly="readonly">
                                                </div>
                                </div>
                               <div class="form-group row">
                                                <label class="col-2 col-form-label">  Marca producto :</label>
                                                <div class="col-10">
                                                    <input type="text" class="form-control" 
                                                     name="txtNombre" id="txtNombre" value="<%=nombre %>">
                                                </div>
                                </div>
                                <button type="button" class="btn btn-success waves-light waves-effect"
                                        type="button" name="btnGuardar" id="btnGuardar">Guardar</button>
                                <button type="button" class="btn btn-danger waves-light waves-effect"
                                        name="btnCancelar" id="btnCancelar" class="button" >Cancelar</button>
                                             <input type="hidden" name="accion" value="actualizar" />
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