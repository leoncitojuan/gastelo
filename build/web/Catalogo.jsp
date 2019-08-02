
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <script src="assets/js/jquery.min.js"></script>
          <script type="text/javascript" src="js/Catalogo.js"></script>
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
      
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <script src="assets/js/modernizr.min.js"></script>

    </head>

    <body  onload="cargar()">

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
                <%
                    ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();
                    int salto = 0;
                    for(int i=0; i<lista.size(); i++){
                        Producto p = lista.get(i);
                %>
                    <div class="col-md-6 col-lg-3">
                        <!-- Simple card -->
                        <div class="card m-b-30">
                            <img class="card-img-top img-fluid" src="Imagen/<%=p.getImagenP() %>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">
                                     <%=p.getClaseProducto()%> <%=p.getMarcaProducto()%> <br>
                                <%=p.getDescripcion()%><br>
                                </h5>
                                <p class="card-text codigo">CS5280.</p>
                                <p class="card-text precio"> S/ <%=p.getPrecioP() %></p>
                                <button type="button"  name="btnModificar" class="btn btn-warning waves-light waves-effect BotonModificar" onclick="location.href='ModificarProducto.jsp?codigoP=<%=p.getCodigoP() %>'">Modificar</button>
                                <button type="button"  name="btnADD"  class="btn btn-success waves-light waves-effect BotonADD"  onclick="location.href='AnadirCarrito.jsp?codigoP=<%=p.getCodigoP()%>&&cliente=<%=cliente %>'">add Carrito</button>
                            </div>
                        </div>

                    </div><!-- end col -->

                <%
                        salto++;
                        if(salto == 3){
                            %>
                            
                            <tr>
                                
                            <%
                            salto = 0;
                        } 
                    }
                %>

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