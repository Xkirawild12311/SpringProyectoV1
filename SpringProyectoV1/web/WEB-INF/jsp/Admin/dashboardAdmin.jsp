<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>ANDINO</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <link rel="stylesheet" href="<c:url value="/resources/css/profesor.css"/>">
        <script src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    </head>
    <body>        
        <div class="wrapper">
            <!-- Sidebar -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <img  src="<c:url value="/resources/images/logo2.png"/>">
                </div>

                <ul class="list-unstyled components">
                    <a href="<c:url value="/salir"/>"><p>Desloguearte</p></a>
                    
                    <li class="active">
                        <a href="#">Inicio</a>
                    </li>
                    <li>                        
                        <a href="<c:url value="/adminDocente.htm?cargoId=Profe" />">Docentes</a>                        
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
                            <li>
                                <a href="asignarCursoDocente.htm">Asignar Curso a Docentes</a>
                            </li>

                        </ul>
                    </li>                 
                    <li>
                        <a href="<c:url value="adminCurso.htm" />">Cursos</a>
                    </li>

                </ul>
            </nav>

            <div id="content">

                
                 <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">

                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Ocultar</span>
                        </button>
                             
                          <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a>Usario: ${pageContext.request.userPrincipal.name}</a>
                                </li>                               
                            </ul>
                        </div>
                    </div>
                </nav>

                <!--CONTENIDO DE LA PAGINA PRINCIPAL-->
                <h1>Bienvenido: ${pageContext.request.userPrincipal.name}</h1>



            </div>
            <!-- Page Content  -->



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
