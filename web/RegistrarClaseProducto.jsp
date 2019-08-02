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
