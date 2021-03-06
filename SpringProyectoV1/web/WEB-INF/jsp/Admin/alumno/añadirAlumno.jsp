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
            <h1>Añadir nuevos Alumnos</h1>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">

                    <form:form method="post" commandName="alumno">
                        <h3>Complete el formulario</h3>                      


                        <p>
                            <form:label path="nombre">Nombre</form:label>
                            <form:input path="nombre" cssClass="form-control" />

                        </p>

                        <p>
                            <form:label path="apellido">Apellido</form:label>
                            <form:input path="apellido" cssClass="form-control" />
                        </p>

                        <p>
                            <form:label path="dni">Dni</form:label>
                            <form:input path="dni" cssClass="form-control" />
                        </p>

                        <p>
                            <form:label path="sexo">Sexo</form:label>
                            <form:select path="sexo" cssClass="form-control">
                                <form:option value="">Sexo</form:option>
                                <form:option value="Masculino">Masculino</form:option>
                                <form:option value="Femenino">Fenemino</form:option>
                                <form:option value="Otro">Otro</form:option> 
                            </form:select>

                        </p>
                        <p>
                            <form:label path="fecNacimiento">Fecha de Nacimiento</form:label>
                            <form:input path="fecNacimiento" type="date"  cssClass="form-control" />
                        </p>
                        <p>
                            <form:label path="estado">Estado</form:label>
                            <form:select path="estado" cssClass="form-control">
                                <form:option value="">Estado</form:option>
                                <form:option value="activo">Activo</form:option>
                                <form:option value="inactivo">Inactivo</form:option>
                            </form:select>
                        </p>  
                        <p>
                            <form:label path="Padre_idPadre1">Id Padre</form:label>
                            <form:select path="Padre_idPadre1" cssClass="form-control">
                                <form:option value="">Id Padre</form:option>
                                <c:forEach items="${nivel2}" var="dato">
                                    <form:option value="${dato.idPadre}">${dato.idPadre}</form:option>

                                </c:forEach>
                            </form:select>
                        </p> 
                        <p>
                            <form:label path="nivel_idNivel">Nivel</form:label>
                            <form:select path="nivel_idNivel" cssClass="form-control">                                
                                <form:option value="">Nivel</form:option>
                                <c:forEach items="${nivel}" var="dato">
                                    <form:option value="${dato.idNivel}">${dato.idNivel}</form:option>

                                </c:forEach>
                            </form:select>

                        </p>


                        <hr />
                        <form:errors path="*" element="div" cssClass="alert alert-danger" />
                        <hr />
                        <input type="submit" value="Enviar" class="btn btn-danger" />
                        <a href="adminAlumno.htm" class="btn btn-warning">Cancelar</a>
                    </form:form>
                    <br>                 
                   <br>
                </div>
            </div> 
        </div>

    </body>
</html>
