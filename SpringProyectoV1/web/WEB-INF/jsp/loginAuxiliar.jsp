<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Andino</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="<c:url value="/resources/css/loginAll.css"/>">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <h1 class="text-center login-title"  >INGRESANDO COMO AUXILIAR</h1>
                    <div class="account-wall">
                        <img class="profile-img" src="<c:url value="/resources/images/auxiliar.jpg"/>"
                             alt="">
                        <form class="form-signin">
                            <input type="text" class="form-control" placeholder="Correo" required autofocus>
                            <input type="password" class="form-control" placeholder="Contraseña" required>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
                            <label class="checkbox pull-left">
                                <input type="checkbox" value="remember-me">Recordarme</label>
                            <a href="#" class="pull-right need-help">Olvidaste tu contraseña?</a><span class="clearfix"></span>
                        </form>
                    </div>                   
                </div>
            </div>
        </div>
    </body>
</html>
