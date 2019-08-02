<%-- 
    Document   : Error
    Created on : 05-nov-2015, 23:12:42
    Author     : Daniel
--%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
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
    <body>
     <jsp:include page="menu.jsp" />
        <!-- End Navigation Bar-->
         <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
          
        %> 
        <div class="wrapper">
            <div class="container-fluid">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                     
                    
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->

               <div class="row">
                    <div class="col-12">
                        <div class="card-box">

                            <h1 align="center">
                                <%
                                    if(request.getParameter("mens")!=null){
                                        out.println(request.getParameter("mens"));
                                    }
                                %>
                            </h1><br>
                            <h2 align="center">
                                <a href="Login.jsp">Inicio</a>
                            </h2>
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
