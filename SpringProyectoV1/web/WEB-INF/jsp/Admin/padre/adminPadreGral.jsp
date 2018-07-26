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
            <nav id="sidebar">
                 <div class="sidebar-header">
                    <img  src="<c:url value="/resources/images/logo2.png"/>">
                </div>

                <ul class="list-unstyled components">
                    <p>Dummy Heading</p>
                    <li>
                        <a href="dashboardAdmin.htm">Inicio</a>
                    </li>
                    <li>
                        <a href="<c:url value="/adminDocente.htm?cargoId=Profe" />">Docentes</a>
                    </li>
                    <li>
                        <a href="adminPadre.htm?cargoId=Padre">Padres</a>
                    </li>
                    <li>
                        <a href="<c:url value="/adminAuxiliar.htm?cargoId=Auxil" />">Auxiliar</a>
                    </li>
                     <li  class="active">
                        <a href="#">Alumnos</a>
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
                    <li>
                        <a href="#">Portfolio</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </nav>
      
        
          <div class="container"> <!--CONTENIDO DE LA PAGINA PRINCIPAL-->
                <h2>Matricula</h2>
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="año1.htm?nivel_idNivel=Gra1" />">
                                    <h4 class="card-title" align="center">1 Grado</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                  <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="#" />">
                                    <h4 class="card-title" align="center">2 Grado</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                  <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="#" />">
                                    <h4 class="card-title" align="center">3 Grado</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                  <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="#" />">
                                    <h4 class="card-title" align="center">4 Grado</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                  <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="#" />">
                                    <h4 class="card-title" align="center">5 Grado</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                  <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="#" />">
                                    <h4 class="card-title" align="center">6 Grado</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                    
                </div>
                    
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
    </body>
</html>
