<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Andino</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/4.0.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>     
        <link rel="stylesheet" href="<c:url value="/resources/css/logincss.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/freelancer.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>">
        
    </head>
    <body> 
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">           
            <a class="navbar-brand" href="home.htm">ANDINO</a>    
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">INICIO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">POR QUÉ ANDINO</a>
                </li>               
            </ul>
        </nav>
        <br>
        <br>
        <div class="container">          
            <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person img-fluid" src="<c:url value="/resources/images/admin2.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="/loginAdmin.htm" />">
                                    <h4 class="card-title" align="center">ADMINISTRADOR</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person img-fluid" src="<c:url value="/resources/images/profesor.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="/loginProfesor.htm" />">
                                    <h4 class="card-title" align="center">PROFESOR</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person img-fluid" src="<c:url value="/resources/images/auxiliar.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="/loginAuxiliar.htm" />">
                                    <h4 class="card-title" align="center">AUXILIAR</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                    <div class="card">
                        <img class="card-img-top person img-fluid" src="<c:url value="/resources/images/padre.jpg"/>">   
                        <div class="card-block"> 
                            <div class="card-footer">
                                <a href="<c:url value="/loginPadre.htm" />">
                                    <h4 class="card-title" align="center">PADRE</h4>
                                </a> 
                            </div>                         
                        </div>
                    </div>      
                </div>
            </div>
        </div>

        <br>
        <br>
         <br>
        <br>
        <!-- About Section -->
        <section class="bg-primary text-white mb-0" id="about">
            <div class="container">
                <h2 class="text-center text-uppercase text-white">¿QUÉ ES ANDINO?</h2>
                <hr class="star-light mb-5">
                <div class="row">
                    <div class="col-lg-4 ml-auto">
                        <p class="lead text-justify">Andino es el Sistema de Gestión de Aprendizaje (LMS) del siglo XXI. Fácil de usar. Confiable (¡99,9% del tiempo en funcionamiento!). Móvil. Abierto. Colaborativo. Ahorra tiempo. Y, lo más importante, se usa.</p>
                    </div>
                    <div class="col-lg-4 mr-auto">
                        <p class="lead text-justify">Cada función e interfaz es desarrollada para permitirte ahorrar tiempo y esfuerzo, permitiendo simplificar la enseñanza y el aprendizaje. Por esa razón, Canvas se adopta más rápida y ampliamente que cualquier otro LMS, en instituciones desde Monterrey hasta Mendoza.</p>
                    </div>
                </div>
                <div class="text-center mt-4">
                    <img class="img-fluid" src="<c:url value="/resources/images/que.png"/>"> 
                </div>
            </div>
        </section>

        <!-- Footer -->
        <section id="footer">
            <div class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>AYUDA</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Comunidad</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Guia de Andino</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Desarrolladores</a></li>                            
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>REFERENCIA</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Privacidad</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Blog</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Politicas de uso aceptable</a></li>
                            </ul>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>DÓNDE ESTAMOS</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Av.Las Americas Mz A Lte N° 3</a></li>                            
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Ayacucho</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Prado_20m@hotmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                        <ul class="list-unstyled list-inline social text-center">
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-google-plus"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();" target="_blank"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                    </hr>
                </div>	
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                        <p><u><a href="https://www.nationaltransaction.com/">Andino Corporación</a></u>Fundado en Lima-Lince el 29-06-2018</p>
                        <p class="h6">&copy Todos los derechos Reservados.<a class="text-green ml-2" href="https://www.sunlimetech.com" target="_blank">Perú</a></p>
                    </div>
                    </hr>
                </div>	
            </div>
        </section>
    </body>
</html>
