<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <div class="container">
            
             <h1>Añadir nuevos Cursos</h1>
             
         <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">

                    <form:form method="post" commandName="curso">
                        <h3>Complete el formulario</h3>                      

                         <p>
                            <form:label path="idCurso">ID Curso</form:label>
                            <form:input path="idCurso" cssClass="form-control" />

                        </p>
                        <p>
                            <form:label path="asignatura">Asignatura</form:label>
                            <form:input path="asignatura" cssClass="form-control" />

                        </p>
                        
                        <hr />
                        <form:errors path="*" element="div" cssClass="alert alert-danger" />
                        <hr />
                        <input type="submit" value="Enviar" class="btn btn-danger" />
                        <a href="adminDocente.htm?cargoId=Profe" class="btn btn-warning">Cancelar</a>
                    </form:form>
                        <br>
                        <br>
                </div>
            </div>         
            
        </div>
    </body>
</html>
