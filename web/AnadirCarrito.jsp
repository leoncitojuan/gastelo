

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
   
 
    <body >

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">

                    <!-- Logo container-->
                    <div class="logo">
                        <!-- Text Logo -->
                        <!-- <a href="index.html" class="logo">
                            <span class="logo-small"><i class="mdi mdi-radar"></i></span>
                            <span class="logo-large"><i class="mdi mdi-radar"></i> Highdmin</span>
                        </a> -->
                        <!-- Image Logo -->
                        <a href="index.html" class="logo">
                            <img src="assets/images/logo_sm.png" alt="" height="26" class="logo-small">
                            <img src="assets/images/logo.png" alt="" height="22" class="logo-large">

                        </a>

                    </div>
                    <!-- End Logo container-->


                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->
                  <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
          <form action="Servlet_Usu" method="post" id="frmCabecera">
                          <div class="navbar-custom">
                    <div class="container-fluid">
                        <div id="navigation">
                            <!-- Navigation Menu-->
                            <ul class="navigation-menu">
    
                                <li class="has-submenu">
                                    <a href="RegistrarVenta.jsp" class="link" id="lnkCompra"><i class="icon-speedometer"></i>Mis compras</a>
                                </li>
    
                                <li class="has-submenu">
                                        <a href="MiPerfil.jsp?codigoU=<%=usu.getCodigoUsuario() %>" class="link"
                                        id="lnkPerfil"></i>Mis cuenta</a>
                                    </li>
                                    
                                <li class="has-submenu">
                                        <a href="CuentaAdministrador.jsp" class="link" id="lnkAdm"><i class="icon-speedometer"></i>Administrar</a>
                                    </li>
                                    
                                <li class="has-submenu">
                                        <a href="Login.jsp" class="link" id="lnkLogin"><i class="icon-speedometer"></i>Login</a>
                                    </li>
                                     <li class="has-submenu">
                                        <a href="Servlet_Usu?accion=logout" class="link" id="lnkLogout"><i class="icon-speedometer"></i>Salir</a>
                                    </li>
    
                            </ul>
                            <!-- End navigation menu -->
                        </div> <!-- end #navigation -->
                    </div> <!-- end container -->
                </div>  <!-- end navbar-custom -->
            <input type="hidden" value="<%=usu.getTipoUsuario() %>" name="txtTipo" id="txtTipo">
            <input type="hidden" name="accion" value="logout">
        </form>

        </header>
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
                            <h1>Bienvenido : <%=usu.getNombreUsuario() %>, <%=usu.getApellidosUsuario() %></h1>
                            
                    </td>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->

               <div class="row">
                    <div class="col-12">
                        <div class="card-box">
       <%
         cliente = request.getParameter("cliente");
        Producto p = Producto_DB.listarProductoPorCodigo(request.getParameter("codigoP"));
    %> 
    <form name="frm" action="Servlet_Prod" method="post" id="frmAnadirCarrito">
        <input type="hidden" name="txtCliente" value="<%=cliente %>">
        <h1>Añadir a carrito</h1>
        <dd> <input type="hidden" name="txtCodigo" value="<%=p.getCodigoP() %>" size="20" maxlength="30"> </dd>
            <div class="form-group row">
                <label class="col-2 col-form-label">Nombre producto :</label>
                <div class="col-10">
                    <input type="text" class="form-control campoNoEditable" 
                     name="txtNombreP"  value="<%=p.getClaseProducto() %> <%=p.getMarcaProducto() %> - <%=p.getDescripcion() %>" 
                               size="60" readonly="readonly"/>
                </div>
            </div>
         <div class="form-group row">
                <label class="col-2 col-form-label">Precio producto :</label>
                <div class="col-10">
                    <input type="text" class="form-control campoNoEditable" 
                     name="txtPrecio"  
                                    value="<%=p.getPrecioP() %>" size="20" maxlength="30" readonly="readonly"/>
                </div>
            </div>
        <div class="form-group row">
                <label class="col-2 col-form-label">Cantidad :</label>
                <div class="col-10">
                    <input type="text" class="form-control campoNoEditable" 
                     type="number" name="txtCantidad" value="1" min="1"/>
                </div>
            </div>
        <button type="button" class="btn btn-danger waves-light waves-effect"
                 name="btnCancelar" id="btnCancelar" >Cancelar</button>
       <button type="submit" name="btnGuardar" id="btnGuardar" 
               class="btn btn-success waves-light waves- button">ADD carrito</button>          
    <input type="hidden" name="accion" value="anadirCarrito">
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