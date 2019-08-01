<%-- 
    Document   : RegistrarClaseProducto
    Created on : 04-oct-2015, 19:43:13
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <script src="assets/js/jquery.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCP.js"></script>
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        <script src="assets/js/modernizr.min.js"></script>
        <title>JSP Page</title>
    </head>
    
    <%
        String Codigo_CP = ObtenerCodigo.CodigoClaseProducto();
    %>
    
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
                                        <a href="MiPerfil.jsp?codigoU=<%=cliente %>" class="link"
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
                                
                            </div>
                        
                            
                    </td>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->
               <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                    
  <form name="frm" action="Servlet_CP" method="post" id="frmRegistrarCP" class="form-horizontal" role="form">
         <h4 class="text-center">Registrar Producto</h4>
            <div class="form-group row">
                <label class="col-2 col-form-label">Codigo :</label>
                <div class="col-10">
                    <input type="text" class="form-control" name="txtCodigo" value="<%=Codigo_CP %>" 
                                        readonly="readonly">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-2 col-form-label"> Clase producto :</label>
                <div class="col-10">
                    <input type="text" name="txtNombre" id="txtNombre"
                                                class="textBox form-control" />
                </div>
            </div>
                                   <div class="row">
                                       <%--<div class="col-4">
                                            <button type="button" id="btnCancelar" name="btnCancelar" class="btn btn-primary ">Cancelar</button>
                                       </div>  
                                       <div class="col-4"></div>
                                       --%>
                                        
                                       <div class="col-4">
                                            <button type="button" id="btnRegistrar" name="btnRegistrar" class="btn btn-primary ">Registrar</button>
                                       </div>
                                    </div>
         <input type="hidden" name="accion" value="insertar">
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

     
        
    </body>
</html>
