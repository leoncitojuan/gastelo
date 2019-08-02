<%-- 
    Document   : menu
    Created on : 01/08/2019, 10:58:01 PM
    Author     : usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
       <!-- Navigation Bar-->
                <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
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
                    <div class="menu-extras topbar-custom">
                        <ul class="list-unstyled topbar-right-menu float-right mb-0">
                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <img src="assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle"> <span class="ml-1 pro-user-name">
                                        <%=usu.getNombreUsuario() +usu.getApellidosUsuario() %><i class="mdi mdi-chevron-down"></i> </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                    <!-- item-->
                                    <a href="Login.jsp"  class="dropdown-item notify-item">
                                        <i class="fi-power"></i> <span>salir</span>
                                    </a>

                                </div>
                            </li>
                        </ul>
                    </div>

                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->
                  <%
             codigo = (String)session.getAttribute("parametroCodigo");
            
            usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
          <form action="Servlet_Usu" method="post" id="frmCabecera">
                          <div class="navbar-custom">
                    <div class="container-fluid">
                        <div id="navigation">
                            <!-- Navigation Menu-->
                            <ul class="navigation-menu">
    
                                <li class="has-submenu">
                                    <a href="Catalogo.jsp" class="link" id="lnkCompra"><i class="icon-speedometer"></i>Catalogo Productos</a>
                                </li>
                                          <li class="has-submenu">
                                        <a href="#">Gestionar Usuario</a>
                                        <ul class="submenu">
                                            <li> <a href="MostrarUsuario.jsp" class="link">Mostrar Usuario</a></li>
                                            <li> <a href="MostrarUsuarioEliminado.jsp" class="link">Usuarios Eliminado</a></li>
                                        </ul>
                                    </li>   

                                <li class="has-submenu">
                                <a href="#"><i class="icon-fire"></i>Gestionar Producto</a>
                                <ul class="submenu">                                   
                                    <li class="has-submenu">
                                        <a href="#">Marcar Producto</a>
                                        <ul class="submenu">
                                            <li><a href="RegistrarMarcaProducto.jsp" class="link">Registro Marca producto</a></li>
                                            <li><a href="MostrarMP.jsp" class="link">Listado Marca producto</a></li>
                                            <li><a href="MostrarMPEliminados.jsp" class="link">Marca producto Eliminado</a> </li>
                         
                                        </ul>
                                    </li>      
                                    <li class="has-submenu">
                                        <a href="#">Clase Producto</a>
                                        <ul class="submenu">
                                       <li><a href="RegistrarClaseProducto.jsp" class="link">Registra Clase producto</a></li>
                                       <li> <a href="MostrarCP.jsp" class="link">Listado Clase producto</a></li>
                                       <li>  <a href="MostrarCPEliminados.jsp" class="link">Clase Eliminado producto</a></li>
  
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="#">Producto</a>
                                        <ul class="submenu">
                                         <li>  <a href="RegistrarProducto.jsp" class="link">Registrar Producto</a></li>
                                         <li><a href="MostrarProducto.jsp" class="link">Listado Producto</a></li>
                                         <li><a href="MostrarProductosEliminados.jsp" class="link">Productos Eliminados</a></li>
                                        </ul>
                                    </li>
                      
                                </ul>
                            </li>
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
