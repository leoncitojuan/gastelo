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
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCP.js"></script>
        
        <title>JSP Page</title>
    </head>
    
    <%
        String Codigo_CP = ObtenerCodigo.CodigoClaseProducto();
    %>
    
    <body >
        <div class="container"  >
            <div class="row mt-5">
                
                <div class="col-3"></div>
                <div class="col-6">
                    <form name="frm" action="Servlet_CP" method="post" id="frmRegistrarCP" class="form-control">
                        
                        <table id="tablaRegistrarCP" class="table justify-content-center" >
                            <tr>
                                <td colspan="2">
                                    <h4 class="text-center">Registrar Producto</h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Codigo :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtCodigo" value="<%=Codigo_CP %>" readonly="readonly" class="form-control">  </dd>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Clase producto :
                                </td>
                                <td>
                                    <dd> <input type="text" name="txtNombre" id="txtNombre" class="textBox form-control" > </dd>
                                </td>
                            </tr>
                            <tr>
                                <td>
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
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                                <input type="hidden" name="accion" value="insertar">
                    </form>        
                    
                </div>
                <div class="col-3"></div>                    
            </div>
        </div>
        
        
    </body>
</html>
