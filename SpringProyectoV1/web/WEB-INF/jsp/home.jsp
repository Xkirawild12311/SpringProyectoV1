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
        <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">     
        <link rel="stylesheet" href="<c:url value="/resources/css/Footer-with-button-logo.css"/>">

    </head>
    <body> 
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">           
            <a class="navbar-brand" href="home.htm">Winter Corp</a>    
            <ul class="nav navbar-nav navbar-right">               
                
                <li><a href="loginAdmin.htm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>


        </nav>   
        <!-- About Section -->
        <section class="bg-primary text-white mb-0" id="about">
            <div class="container">
                <h2 class="text-center text-uppercase text-white">Winter Corp.Soft</h2>
                <hr class="star-light mb-5">
                <div class="row">
                    <div class="col-lg-4 ml-auto">
                        <p class="lead text-justify">Winter Corp es el Sistema de Gestión de Aprendizaje (LMS) del siglo XXI. Fácil de usar. Confiable (¡99,9% del tiempo en funcionamiento!). Móvil. Abierto. Colaborativo. Ahorra tiempo. Y, lo más importante, se usa.</p>
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

        <footer id="myFooter">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <h2 class="logo"><a href="#"> Winter Corp</a></h2>
                    </div>
                    <div class="col-sm-2">
                        <h5>AYUDA</h5>
                        <ul>
                            <li><a href="#">Comunidad</a></li>
                            <li><a href="#">Desarrolladores</a></li>                        
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>REFERENCIA</h5>
                        <ul>
                            <li><a href="#">Privacidad</a></li>
                            <li><a href="#">Blog </a></li>
                            <li><a href="#">Politicas de uso aceptable</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>DONDE ESTAMOS</h5>
                        <ul>
                            <li><a href="#">Av.Las Americas Mz A Lte N° 3</a></li>
                            <li><a href="#">Ayacucho</a></li>
                            <li><a href="#">Prado_20m@hotmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <div class="social-networks">
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                        </div>
                        <button type="button" class="btn btn-default">Contactanos</button>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <p>© 2018 Copyright </p>
            </div>
        </footer>
    </body>
</html>
