<%-- 
    Document   : MostrarDetalleVenta
    Created on : 14-nov-2015, 22:06:26
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <script src="assets/js/jquery.min.js"></script>
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
        String CodigoVenta = (String)session.getAttribute("CodigoVenta");
        String CodigoCliente = (String)session.getAttribute("CodigoCliente");
        String Cliente = (String)session.getAttribute("Cliente");
        String Fecha = (String)session.getAttribute("FechaVenta");
        String Importe = (String)session.getAttribute("Importe");
    %>
    
    <body>
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
     
        <div class="wrapper">
            <div class="container-fluid">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                            <div class="btn-group pull-right">
                               
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
                             
        <form action="Servlet_Prod" method="post" id="frmMostrarDetalleVenta">
            <br>
            <table class="table" id="tablaMostrarDetalleVenta">
                <tr>
                    <th colspan="5" class="TituloDV">
                        <h3>VENTA - <%=CodigoVenta %> </h3>
                    </th>
                </tr>
                <tr>
                    <th class="TituloDV">
                        CLIENTE :  
                    </th>
                    <td colspan="4" class="Contenido">
                        <%=Cliente %>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" class="FilaEnBlanco">
                        <h3> Detalle Venta</h3>  <br>
                    </td>
                </tr>
              
                 <tr>
                    <th class="TituloDV">
                        PRODUCTO 
                    </th>
                    <th class="TituloDV">
                        P/U (S/.)
                    </th>
                    <th class="TituloDV">
                        CANTIDAD 
                    </th>
                    <th class="TituloDV">
                        DESC (S/.)
                    </th>
                    <th class="TituloDV">
                        SUBTOTAL (S/.)
                    </th>
                </tr>
                
                
                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    ArrayList<DetalleVenta> lista = DetalleVenta_DB.obtenerDetalleVenta(CodigoVenta); 
                    for(int i=0; i<lista.size(); i++){
                        DetalleVenta dv = lista.get(i);
                        %>
                            <tr>
                                <td class="Contenido"><%=dv.getNombreProducto() %></td>
                                <td class="Contenido"><%=df.format(dv.getPrecio())%></td>
                                <td class="Contenido"><%=df.format(dv.getCantidad())%></td>
                                <td class="Contenido"><%=df.format(dv.getDescuento()) %></td>
                                <td class="Contenido"> <div> <%=df.format(dv.getSubTotal()) %> </div> </td>
                            </tr>
                        <%
                    }
                %>
                <tr>
                    <th colspan="4" class="TituloDV">
                        <div> TOTAL (S/.)  </div>
                    </th>
                    <th class="Contenido">
                        <div> <%=df.format(Double.parseDouble(Importe)) %> </div>
                    </th>
                </tr>
                <tr>
                    <td colspan="5" class="FilaEnBlanco">
                        <br>
                    </td>
                </tr>
            </table>
                    
            <table id="tablaRegresar">
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="MostrarVenta.jsp" class="link">REGRESAR</a>
                        <h3>Datos del cliente y venta</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    
        </form>
        
                    <form id="frmMostrarDatosCliente">
                        <br>
                        <table class="table" id="tablaMostrarDatosCliente">
                            <%
                                usu = Usuario_DB.listarUsuarioPorCodigo(CodigoCliente);
                            %>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Fecha : </dd>
                                </td>
                                <td>
                                    <dd> <%=Fecha %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Codigo cliente : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getCodigoUsuario() %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Cliente : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getNombreUsuario() %>, <%=usu.getApellidosUsuario() %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Dni : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getDniUsuario() %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Email : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getEmailUsuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Departamento : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getDepartamentoUsuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Provincia : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getProvinciaUsuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Distrito : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getDistritoUsuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Domicilio1 : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getDireccion1Usuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Domicilio2 : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getDireccion2Usuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Telefono : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getTelefonoUsuario()%> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                    </form>  
                        </div> <!-- end card-box -->
                    </div><!-- end col -->
                </div>

            </div> <!-- end container -->
        </div>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
    </body>
</html>
