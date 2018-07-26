<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page session="true"%>
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
                                      <div class="account-wall">
                        <img class="profile-img" src="<c:url value="/resources/images/padre.jpg"/>"
                             alt="">


                    
                        <form name='loginForm' class="form-signin" action="<c:url value='j_spring_security_check'/>" method='POST'>
                           
                            <input type="correo" class="form-control" placeholder="correo" id="username" name="username" required autofocus>
                         
                          
                           <input type="password" class="form-control" placeholder="password" id="password" name="password" required>

                            <button class="btn btn-lg btn-primary btn-block" name="submit"  type="submit">Ingresar</button>                  
                          
                        </form>
                    </div>                   
                </div>
            </div>
        </div>
    </body>
</html>