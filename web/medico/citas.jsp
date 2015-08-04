<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="cia" class="modeloClinica.modeloClinica"></jsp:useBean>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Clinica "El pasaje"</a>
        </div>
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                <ul class="dropdown-menu alert-dropdown">
                    <li>
                        <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                    </li>
                    <li>
                        <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">View All</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%=session.getAttribute("usuario")%> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#"><i class="fa fa-fw fa-cog"></i> Configuración</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-key"></i> Nueva contraseña</a>
                </li>
                <li>
                    <a href="index.jsp"><i class="fa fa-fw fa-power-off"></i> Cerrar sesión</a>
                </li>
            </ul>
        </li>
    </ul>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="principalMedico.jsp?tipo=1"><i class=" fa fa-fw fa-home"></i> Inicio</a>
            </li>
            <li class="active">
                <a href="principalMedico.jsp?tipo=3&id=0"><i class="fa fa-fw fa-calendar"></i> Citas</a>
            </li>
        </ul>
    </div>
</nav>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Citas
                </h1>
                <ol class="breadcrumb">
                    <li>
                        <i class="fa fa-home"></i> <a href="principalMedico.jsp?tipo=1"> Inicio</a>
                    </li>
                    <li>
                        <i class="fa fa-calendar"></i> Citas
                    </li>
                </ol>
            </div> 
        </div>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            if (id >= 1) {%>
        <%@ include file="consulta.jsp"%>
        <%} else {%>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-default">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Hora</th>
                                    <th>Fecha</th>
                                    <th>Medico</th>
                                    <th>Expediente</th>
                                    <th>Consulta</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ResultSet rs = cia.consultar("select ci.\"idCita\",ci.hora,ci.fecha,pa.nombre,pa.\"apPaterno\",pa.\"apMaterno\", per.nombre as medico, espe.\"nombreEspecialidad\" especialidad from clinica.citas ci inner join clinica.medico me on(ci.\"idMedico\"=me.\"idMedico\") inner join clinica.personal per on(per.\"idPersonal\"=me.\"idPersonal\")inner join clinica.paciente pa on(ci.\"idPaciente\"=pa.\"idPaciente\")inner join clinica.especialidad espe on(per.id_espe=espe.\"idEspecialidad\") where per.tipo_personal = 2 and ci.status='Pendiente' and per.nom_us = '"+session.getAttribute("usuario")+"';");
                                    if (rs.next()) {
                                        do {

                                %>
                                <tr class="odd gradeX">
                                    <td><%=rs.getString(4) + " " + rs.getString(5) + " " + rs.getString(6)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(7) + " con especialidad en: " + rs.getString(8)%></td>
                                    <td>
                                        <%@ include file="expediente.jsp"%>
                                    </td>
                                    <td>
                                        <a href="principalMedico.jsp?tipo=2&id=<%=rs.getString(1)%>" class="btn btn-primary btn-xs"><i class="fa fa-file-text" ></i></a>
                                    </td>
                                </tr>
                                </tbody>
                                <%     } while (rs.next());
                                    }
                                    else{
                                %>
                                No tiene citas
                                <%
                                    }
                                %>
                        </table>
                    </div>

                </div>
            </div>
        </div>
        <%}%>
    </div>
</div>


