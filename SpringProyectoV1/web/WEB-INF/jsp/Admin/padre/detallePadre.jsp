<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Andes</h3>
                </div>

                <ul class="list-unstyled components">
                    <p>Dummy Heading</p>
                <li class="active">
                       <a href="dashboardAdmin.htm">Inicio</a>
                    </li>
                    <li>                        
                        <a href="<c:url value="/adminDocente.htm?cargoId=Profe" />">Docentes</a>                        
                    </li>
                    <li>
                        <a href="#paginaPadre" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Padres</a>  
                            <ul class="collapse list-unstyled" id="paginaPadre">
                            <li>
                                <a href="adminPadreGral.htm">Inicio</a>
                            </li>
                            <li>
                                <a href="adminPadre.htm?">Padres</a>
                            </li>                          
                        </ul>
                    </li>
                      <li>
                        <a href="adminPadre.htm?cargoId=Padre">Padres</a>
                    </li>
                    <li>
                        <a href="<c:url value="/adminAuxiliar.htm?cargoId=Auxil" />">Auxiliar</a>
                    </li>
                     <li>
                        <a href="#paginaAlumno" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Matricula</a>  
                            <ul class="collapse list-unstyled" id="paginaAlumno">
                            <li>
                                <a href="adminPadre.htm?idPadre=Padre">Matricular Padres</a>
                            </li>
                            <li>
                                <a href="#">Matricular Alumnos</a>
                            </li>
                            <li>
                                <a href="<c:url value="/adminAlumno.htm" />">Ver Alumnos</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<c:url value="#" />">Agregar Nivel</a>
                    </li>
                    <li>
                        <a href="<c:url value="#" />">Cursos</a>
                    </li>
                    <li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Pages</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li>
                                <a href="#">Page 1</a>
                            </li>
                            <li>
                                <a href="#">Page 2</a>
                            </li>
                            <li>
                                <a href="#">Page 3</a>
                            </li>
                        </ul>
                    </li>               
                </ul>
            </nav>
              <div class="container"> <!--CONTENIDO DE LA PAGINA PRINCIPAL-->
                 <br>
                <h2 align="center">Lista de Hijos Asignados al Padre</h2>
                <br>
                <br>
                <a href="añadirDocente.htm" class="btn btn-success">Añadir</a>                
                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th>ID Alumno</th>
                            <th>Nombre</th>                            
                            <th>Apellido</th> 
                            <th>Dni</th>
                            <th>Sexo</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Estado</th>
                            <th>Grado</th>                                               
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${hijos}" var="dato">
                            <tr>
                                <td><c:out value="${dato.idAlumno}" /></td>                                
                                <td><c:out value="${dato.nombre}" /></td>
                                <td><c:out value="${dato.apellido}" /></td>  
                                <td><c:out value="${dato.dni}" /></td>
                                <td><c:out value="${dato.sexo}" /></td>
                                <td><c:out value="${dato.fecNacimiento}" /></td>
                                <td><c:out value="${dato.estado}" /></td>
                                <td><c:out value="${dato.nivel_idNivel}" /></td>                                                                                                                                             
                            </tr>
                        </c:forEach>
                    </tbody>
                </table> 
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
    </body>
</html>
