<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <h1 class="text-center login-title"  >INGRESANDO COMO ADMINISTRADOR</h1>
                    <div class="account-wall">
                        <img class="profile-img" src="<c:url value="/resources/images/padre.jpg"/>"
                             alt="">



                        <form:form commandName="personal" class="form-signin" method="post">

                            <form:label path="correo">Correo</form:label>
                            <form:input path="correo" cssClass="form-control"></form:input>


                            <form:label path="password">Password</form:label>
                            <form:password path="password" cssClass="form-control" ></form:password>

                            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
                            <label class="checkbox pull-left">
                                <input type="checkbox" value="remember-me">Recordarme</label>
                            <a href="#" class="pull-right need-help">Olvidaste tu contraseña?</a><span class="clearfix"></span>
                        </form:form>
                    </div>                   
                </div>
            </div>
        </div>
    </body>
</html>