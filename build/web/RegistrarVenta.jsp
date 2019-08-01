
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarVenta.js"></script>
                    <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
      
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
      <!--  <link type="text/css" rel="stylesheet" href="css/css1.css" />-->
        <script src="assets/js/modernizr.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
            <%
        String cliente = request.getParameter("cliente");
           %>
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
 

       <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->
                  <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
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
        <%
            String codigoVenta = ObtenerCodigo.CodigoVenta();
            cliente = (String)session.getAttribute("parametroCliente");
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
                            <h1>Bienvenido : <%=cliente %></h1>
                            
                    </td>
                        </div>
                    </div>
                </div>   
    <div class="row">
  <div class="col-12">
      <div class="card-box">
        <form action="Servlet_Venta" method="post" id="frmRegistrarVenta">
            <br>
            <table class="table" id="tablaRegistrarVenta">
                <tr>
                    <th colspan="7" class="TituloDV">
                        <h3>CARRITO DE COMPRAS</h3>
                        <input type="hidden" name="txtCodigoV" value="<%=codigoVenta %>">
                    </th>
                </tr>
                <tr>
                    <th colspan="2" class="TituloDV">
                        CLIENTE :  
                    </th>
                    <td colspan="5" class="Contenido">
                        <%=cliente %>
                        <input type="hidden" name="txtCliente" value="<%=cliente %>" size="50" readonly="readonly">
                    </td>
                </tr>
                <tr>
                    <td colspan="7" class="FilaEnBlanco">
                        <br>
                    </td>
                </tr>
                <tr>
                    <th class="TituloDV">
                        N°
                    </th>
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
                    <th class="TituloDV">
                        OPCION
                    </th>
                </tr>
                
                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    double total = 0;
                    ArrayList<DetalleVenta> lista = (ArrayList<DetalleVenta>)session.getAttribute("carrito");
                    
                    if(lista != null){
                        for(DetalleVenta dv:lista){
                            %>
                            
                            <tr>
                                <td class="Contenido">
                                    <%=dv.getNumero() %>
                                </td>
                                <td class="Contenido">
                                    <%=dv.getNombreProducto() %>
                                    <input type="hidden" name="nombreProd" value="<%=dv.getNombreProducto() %>">
                                </td>
                                <td class="Contenido">
                                    <%=df.format(dv.getPrecio())%>
                                    <input type="hidden" name="precioProd" value="<%=dv.getPrecio()%>">
                                </td>
                                <td class="Contenido">
                                    <%=dv.getCantidad()%>
                                    <input type="hidden" name="cantidadProd" value="<%=dv.getCantidad()%>">
                                </td>
                                <td class="Contenido">
                                    <%=df.format(dv.getDescuento())%>
                                    <input type="hidden" name="descuentoProd" value="<%=dv.getDescuento()%>">
                                </td>
                                <td class="Contenido">
                                    <div> <%=df.format(dv.getSubTotal()) %> </div>
                                    <input type="hidden" name="subTotalProd" value="<%=dv.getSubTotal()%>">
                                </td> 
                                <td whidh="100" class="Opcion">
                                    <button type="button" class="btn btn-danger waves-light waves-effect"
                                            name="btnEliminar" id="btnEliminar"
                                            onclick="location.href='Servlet_Venta?numero=<%=dv.getNumero() %>&&accion=quitar'"
                                            >Eliminar</button>
                                </td>
                            </tr>
                            <%
                            total = total + dv.getSubTotal();
                        }
                    }
                %>
                <tr>
                    <th colspan="5" class="TituloDV">
                        <div> TOTAL (S/.)  </div>
                    </th>
                    <th class="Contenido">
                        <div> <%=String.valueOf(df.format(total)) %> </div>
                        <input type="hidden" name="txtTotal" value="<%=String.valueOf(df.format(total)) %>" readonly="readonly">
                    </th>
                    <th class="FilaEnBlanco">
                    </th>
                </tr>
                <tr>
                    <td colspan="7" class="FilaEnBlanco">
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
                        <button class="btn btn-success waves-light waves-effect" name="btnRegistrar"
                                            id="btnRegistrarVenta" >Registrar compra</button>
                                     
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>        
                    <input type="hidden" name="accion" value="RegistrarVenta"><br>
                    
        </form>
          </div> <!-- end card-box -->
        </div><!-- end col -->
    </div>
                </div><!-- end col -->
     </div>
                    <h3 align="center">
                        <a href="Catalogo.jsp" class="link">Seguir comprando</a>
                    </h3>
    </body>
</html>
