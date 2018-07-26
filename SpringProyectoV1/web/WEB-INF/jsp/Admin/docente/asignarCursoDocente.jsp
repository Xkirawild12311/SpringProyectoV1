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

            <h1>Asignar Cursos al Docente</h1>

            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">

                    <form:form method="post" commandName="nivel_curso">
                        <h3>Complete el formulario</h3>                   

                        <p>
                            <form:label path="nivel_id">Grado</form:label>
                            <form:select path="nivel_id" cssClass="form-control">
                                <form:option value="">Grado</form:option>
                                <c:forEach items="${nivelx}" var="dato">
                                    <form:option value="${dato.idNivel}">${dato.idNivel}</form:option>

                                </c:forEach>
                            </form:select>                                                     

                        </p>

                        <p>
                            <form:label path="curso_id">Curso</form:label>
                            <form:select path="curso_id" cssClass="form-control">
                                <form:option value="">Curso</form:option>
                                <c:forEach items="${cursox}" var="dato">
                                    <form:option value="${dato.idCurso}">${dato.idCurso}</form:option>

                                </c:forEach>
                            </form:select>                                                     

                        </p>
                     <p>
                            <form:label path="personal_id">Id del Docente</form:label>
                            <form:input path="personal_id" cssClass="form-control" />
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
