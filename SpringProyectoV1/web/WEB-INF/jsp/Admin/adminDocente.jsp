<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <meta charset=UTF-8">
        <title>ANDINO</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <link rel="stylesheet" href="<c:url value="/resources/css/prueba.css"/>">
        <script src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Andes</h3>
                </div>

                <ul class="list-unstyled components">
                    <p>Dummy Heading</p>
                    <li>
                        <a href="dashboardAdmin.htm">Inicio</a>
                    </li>
                    <li class="active">                        
                        <a href="#">Docentes</a>                        
                    </li>
                    <li>
                        <a href="#paginaPadre" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Padres</a>  
                            <ul class="collapse list-unstyled" id="paginaPadre">
                                                     <li>
                                <a href="adminPadre.htm?">Padres</a>
                            </li>                          
                        </ul>
                    </li>                
                    <li>
                        <a href="<c:url value="/adminAuxiliar.htm?cargoId=Auxil" />">Auxiliar</a>
                    </li>
                    <li>
                        <a href="<c:url value="/adminAlumno.htm" />">Alumnos</a>
                    </li>
                     <li>
                        <a href="#paginaAlumno" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Matricula</a>  
                            <ul class="collapse list-unstyled" id="paginaAlumno">
                            <li>
                                <a href="añadirPadre.htm">Matricular Padres</a>
                            </li>
                            <li>
                                <a href="añadirAlumno.htm">Matricular Alumnos</a>
                            </li>
                            <li>
                                <a href="añadirDocente.htm">Matricular Docentes</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li>
                        <a href="<c:url value="#" />">Agregar Nivel</a>
                    </li>
                    <li>
                        <a href="<c:url value="#" />">Cursos</a>
                    </li>
                          
                </ul>
            </nav>
            
            <div id="content">
                
                                     <!--CONTENIDO del Navbar-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">

                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Ocultar</span>
                        </button>
                                        
                    </div>
                </nav>
                
                <div class="container"> <!--CONTENIDO DE LA PAGINA PRINCIPAL-->
                    <br>
                <h2 align="center">Lista de todos nuestros Docentes</h2>
                <br>
          
                <a href="añadirDocente.htm" class="btn btn-success">Añadir</a>                
                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Cargo</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Dni</th>
                            <th>Sexo</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                            <th>Fecha de Nacimiento</th> 
                            <th>Estado</th>
                            <th align="center" colspan="3" >Accion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${profe}" var="dato">
                            <tr>
                                <td><c:out value="${dato.idPersonal}" /></td>
                                <td><c:out value="${dato.cargoId}" /></td>
                                <td><c:out value="${dato.nombre}" /></td>
                                <td><c:out value="${dato.apellido}" /></td>  
                                <td><c:out value="${dato.dni}" /></td>
                                <td><c:out value="${dato.sexo}" /></td>
                                <td><c:out value="${dato.correo}" /></td>
                                <td><c:out value="${dato.contraseña}" /></td>
                                <td><c:out value="${dato.fecNacimiento}" /></td>                               
                                <td><c:out value="${dato.estado}" /></td>
                                <td>
                                    <a href="<c:url value="eliminarDocente.htm?idPersonal=${dato.idPersonal}"/>" class="btn btn-warning">Eliminar</a>                                    
                                </td>
                                <td>
                                    <a href="<c:url value="modificarDocente.htm?idPersonal=${dato.idPersonal}"/>" class="btn btn-primary">Modificar</a>
                                </td>
                                <td>
                                    <a href="<c:url value="detalleDocente.htm?personal_id=${dato.idPersonal}"/>" class="btn btn-info">Detalle</a>
                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table> 
            </div>     
                
            </div> 
            
           
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <!-- Popper.JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
       <script language="JavaScript">
        function aviso(url){
        if (!confirm("ALERTA!! va a proceder a eliminar este registro, si desea eliminarlo de click en ACEPTAR\n de lo contrario de click en CANCELAR.")) {
        return false;
        }
        else {
        document.location = url;
        return true;
        }
        }
        </script>
    </body>
</html>
