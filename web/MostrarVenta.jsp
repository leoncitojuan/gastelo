
<%@page import="javax.persistence.Convert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <script src="assets/js/jquery.min.js"></script>
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
      
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
      <!--  <link type="text/css" rel="stylesheet" href="css/css1.css" />-->
        <script src="assets/js/modernizr.min.js"></script>
     <!--<link type="text/css" rel="stylesheet" href="css/css1.css" />-->
    </head>
   
 
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
                            <h1>Bienvenido  </h1>
                            
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
  
        <form id="frmMostrarCabeceraVenta">
            <table class="table" id="tablaMostrarCabeceraVenta">
                <tr>
                    <th>
                        <h1> Pedidos realizados </h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a>
                    </td>
                </tr>
            </table>
        </form>
        
        <hr>
        
        <form id="frmMostrarCuerpoVenta">
            <table class="table" id="tablaMostrarCuerpoVenta">
                <thead>
          <tr>
                    <th class="Titulo">
                        CODIGO
                    </th>
                    <th class="Titulo">
                        CLIENTE
                    </th>
                    <th class="Titulo">
                        IMPORTE (S/.)
                    </th>
                    <th class="Titulo">
                        FECHA Y HORA
                    </th>
                    <th colspan="2" class="Titulo">
                        OPCION
                    </th>
                </tr>    
                </thead>
                <tbody>
              <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    ArrayList<Venta> lista = Venta_DB.ObtenerVentas();
                    for(int i=0; i<lista.size(); i++){
                        Venta v = lista.get(i);
                        %>
                        
                <tr>
                    <td>
                        <%=v.getCodigoVenta()%>
                    </td>
                    <td>
                        <%=v.getCliente()%>
                    </td>
                    <td>
                        <%=df.format(v.getTotal())%>
                    </td>
                    <td>
                        <%=v.getFecha() %>
                    </td>
                    <td class="Opcion">
                        <button type="button" name="btnDetalle" id="btnDetalle" class="btn btn-info waves-light waves-effect"
                                onclick="location.href='Servlet_Venta?codigoV=<%=v.getCodigoVenta() %>&&cliente=<%=v.getCliente() %>&&importe=<%=v.getTotal() %>&&FechaV=<%=v.getFecha() %>&&codigoCli=<%=v.getCodigoCliente() %>&&accion=MostrarDetalle'"
                                >Detalle venta</button>
                    </td>
                    <td class="Opcion">
                        <button type="button" name="btnEliminar" id="btnEliminar" 
                                class="btn btn-danger waves-light waves-effect"
                        onclick="location.href='Servlet_Venta?codigoV=<%=v.getCodigoVenta() %>&&accion=EliminarVenta'">Eliminar</button>
                    </td>
                </tr>
                
                <%
                    }
                %>

                </tbody>
            </table>
        </form>
     
                            <!-- end row -->
                        </div> <!-- end card-box -->
                    </div><!-- end col -->
                </div>
              


           







                <!-- end row -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
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