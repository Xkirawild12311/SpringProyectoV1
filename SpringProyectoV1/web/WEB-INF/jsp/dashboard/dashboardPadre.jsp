<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>        
        <title>ANDINO</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">        
        <!-- Bootstrap core CSS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <!-- Custom fonts for this template-->        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">       
        <!-- Page level plugin CSS-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>        
        <!-- Custom styles for this template-->
        <link rel="stylesheet" href="https://blackrockdigital.github.io/startbootstrap-sb-admin/css/sb-admin.css">        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="home.htm">ANDINO</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Inicio">
                        <a class="nav-link" href="dashboardPadre.htm"> 
                            <i class="fas fa-home"></i>
                            <span class="nav-link-text">INICIO</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tareas">
                        <a class="nav-link" href="tareas.htm"> 
                            <i class="fas fa-graduation-cap"></i>
                            <span class="nav-link-text">TAREAS</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Notas">
                        <a class="nav-link" href="notas.htm"> 
                            <i class="fab fa-phoenix-squadron"></i>
                            <span class="nav-link-text">MIS NOTAS</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Cursos">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">                            
                            <i class="fas fa-book"></i>
                            <span class="nav-link-text">MIS CURSOS</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="collapseComponents">
                            <li>                               
                                <a href="comunicacion.htm">Comunicación</a>
                            </li>
                            <li>
                                <a href="matematicas.htm">Matemáticas</a>
                            </li>
                            <li>
                                <a href="ciencia.htm">Ciencia y Ambiente</a>
                            </li>
                            <li>
                                <a href="religion.htm">Religión</a>
                            </li>
                            <li>
                                <a href="historia.htm">Historia y Geografia</a>
                            </li>
                        </ul>
                    </li>
                      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Reuniones">
                        <a class="nav-link" href="reuniones.htm"> 
                            <i class="fab fa-phoenix-squadron"></i>
                            <span class="nav-link-text">PROX.REUNIONES</span>
                        </a>
                    </li>
                     <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Conducta">
                        <a class="nav-link" href="conducta.htm"> 
                            <i class="fab fa-phoenix-squadron"></i>
                            <span class="nav-link-text">CONDUCTA ACADÉMICA</span>
                        </a>
                    </li>
                 
                   
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Asistencia">
                        <a class="nav-link" href="asistencia.htm">
                            <i class="fa fa-fw fa-link"></i>
                            <span class="nav-link-text">ASISTENCIAS</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-fw fa-envelope"></i>
                            <span class="d-lg-none">Messages
                                <span class="badge badge-pill badge-primary">12 New</span>
                            </span>
                            <span class="indicator text-primary d-none d-lg-block">
                                <i class="fa fa-fw fa-circle"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="messagesDropdown">
                            <h6 class="dropdown-header">New Messages:</h6>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <strong>David Miller</strong>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <strong>Jane Smith</strong>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <strong>John Doe</strong>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item small" href="#">View all messages</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-fw fa-bell"></i>
                            <span class="d-lg-none">Alerts
                                <span class="badge badge-pill badge-warning">6 New</span>
                            </span>
                            <span class="indicator text-warning d-none d-lg-block">
                                <i class="fa fa-fw fa-circle"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">New Alerts:</h6>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <span class="text-success">
                                    <strong>
                                        <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
                                </span>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <span class="text-danger">
                                    <strong>
                                        <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
                                </span>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <span class="text-success">
                                    <strong>
                                        <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
                                </span>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item small" href="#">View all alerts</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <form class="form-inline my-2 my-lg-0 mr-lg-2">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Search for...">
                                <span class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Salir</a>
                    </li>
                </ul>
            </div>
        </nav>

        <script src="<c:url value="/resources/js/jquery/jquery.min.js"/>"></script>   
        <script src="<c:url value="/resources/js/bootstrap/bootstrap.bundle.min.js"/>"></script>         
        <!-- Core plugin JavaScript-->
        <script src="<c:url value="/resources/js/jquery-easing/jquery.easing.min.js"/>"></script>        
        <!-- Page level plugin JavaScript-->
        <script src="<c:url value="/resources/js/chart/Chart.min.js"/>"></script> 
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
        <script src="<c:url value="/resources/js/datatables/jquery.dataTables.js"/>"></script>
        <script src="<c:url value="/resources/js/datatables/dataTables.bootstrap4.js"/>"></script>        
        <!-- Custom scripts for all pages-->
        <script src="<c:url value="/resources/js/sb-admin/sb-admin.min.js"/>"></script>        
        <!-- Custom scripts for this page-->
        <script src="<c:url value="/resources/js/sb-admin/sb-admin-datatables.min.js"/>"></script>
        <script src="<c:url value="/resources/js/sb-admin/sb-admin-charts.min.js"/>"></script>        
    </body>
</html>
