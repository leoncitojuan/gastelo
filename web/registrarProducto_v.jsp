<%@page import="Clase.*" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AppAdmin | Dashboard</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
  </head>
  <body>
    <%
        String Codigo_P = ObtenerCodigo.CodigoProducto();
    %>
    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">AppAdmin</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">Productos</a></li>
            <li><a href="paginas.html">Registrar Venta</a></li>
            <li><a href="entradas.html">Entradas</a></li>
            <li><a href="usuarios.html">Usuarios</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Bienvenido, Render2Web</a></li>
            <li><a href="login.html">Salir</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>Panel <small>- Administracion</small></h1>
          </div>
          <div class="col-md-2">
            <div class="dropdown crear">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Elige una Opcion
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a type="button" data-toggle="modal" data-target="#addPage">Agregar Productos</a></li>
                <li><a href="#">Listar Productos</a></li>
                <li><a href="#">Productos Dados de Baja</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li class="active">Panel de Control</li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="list-group">
              <a href="index.html" class="list-group-item active color-principal">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Panel de Control
              </a>
              <a href="paginas.html" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Paginas <span class="badge">39</span></a>
              <a href="entradas.html" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Posts <span class="badge">45</span></a>
              <a href="usuarios.html" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios <span class="badge">112</span></a>
            </div>

            <div class="well">
              <h4>Espacio en disco</h4>
              <div class="progress">
                  <div class="barra-progreso" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                      40%
              </div>
            </div>
            <h4>Ancho de banda </h4>
            <div class="progress">
                <div class="barra-progreso" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                    75%
            </div>
          </div>
            </div>
          </div>
          <div class="col-md-9">
            <!-- Vista rápida del sitio -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Vista Rápida</h3>
              </div>
              <div class="panel-body">
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 508</h2>
                    <h4>Usuarios</h4>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h2><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> 17</h2>
                    <h4>Paginas</h4>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h2><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 33</h2>
                    <h4>Entradas</h4>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="well dash-box">
                    <h2><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 15,336</h2>
                    <h4>Visitantes</h4>
                  </div>
                </div>
              </div>
              </div>

              <!-- últimos usuarios -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">Últimos usuarios</h3>
                </div>
                <div class="panel-body">
                  <table class="table table-striped table-hover">
                      <tr>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Registrado</th>
                      </tr>
                      <tr>
                        <td>Juan Lopez</td>
                        <td>juancho4582@gmail.com</td>
                        <td>Dic 17, 2012</td>
                      </tr>
                      <tr>
                        <td>Martha Solis</td>
                        <td>mart789ha@yahoo.es</td>
                        <td>Dic 17, 2012</td>
                      </tr>
                      <tr>
                        <td>John Doe</td>
                        <td>jdoe@gmail.com</td>
                        <td>Dic 17, 2012</td>
                      </tr>
                      <tr>
                        <td>Mauricio Osorio</td>
                        <td>mauosoro@yahoo.com</td>
                        <td>Dic 17, 2012</td>
                      </tr>
                      <tr>
                        <td>Mike Mayer</td>
                        <td>mjohn88@gmail.com</td>
                        <td>Dic 17, 2012</td>
                      </tr>
                    </table>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>

    <footer id="footer">
      <p>Copyright AppAdmin, &copy; 2017</p>
    </footer>

    <!-- Modals -->

    <!-- Agregar página -->
    <div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form name="frm" action="Servlet_Prod" method="post" id="frmRegistrarProd">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Agregar Producto</h4>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label>Codigo</label>
          <input type="text" class="form-control" placeholder="Codigo" value="<%=Codigo_P %>" name="txtCodigo" >
        </div>
        <div class="form-group">
          <label>Clase Producto</label>
          <input type="text" class="form-control" placeholder="Clase" name="txtClase" id="txtClase">
        </div>
        <div class="form-group">
          <label>Marca Producto</label>
          <input type="text" class="form-control" placeholder="Marca Producto" name="txtMarca" id="txtMarca">
        </div>
        <div class="form-group">
          <label>Descripcion</label>
          <input type="text" class="form-control" placeholder="Descripcion" name="txtDescripcion" id="txtDescripcion" >
        </div>
        <div class="form-group">
          <label>Precio</label>
          <input type="text" class="form-control" placeholder="Precio" name="txtPrecio" id="txtPrecio">
        </div>
        <div class="form-group">
          <label>Imagen</label>
          <input type="file" class="form-control" name="txtImagen" id="txtImagen">
        </div>
      </div>
      <div class="modal-footer">          
        <button type="button" class="btn btn-default" name="btnCancelar" id="btnCancelar" data-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary" name="btnRegistrar" id="btnRegistrar" >Registrar</button>
        <input type="hidden" name="accion" value="insertar">
      </div>
    </form>
    </div>
  </div>
</div>

  <script>
     CKEDITOR.replace( 'editor1' );
 </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
