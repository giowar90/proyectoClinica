<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="cita" class="modeloClinica.modeloClinica"></jsp:useBean>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">Clinica "La antesala de la muerte"</a>
    </div>
    <ul class="nav navbar-right top-nav">
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
                <a href="principalAsis.jsp?tipo=1"><i class=" fa fa-fw fa-home"></i> Inicio</a>
            </li>
            <li>
                <a href="principalAsis.jsp?tipo=4&id=0"><i class="fa fa-fw fa-user"></i> Paciente</a>
            </li>
            <li>
                <a href="principalAsis.jsp?tipo=2&id=0"><i class="fa fa-fw fa-user-md"></i> Medico</a>
            </li>
            <li class="active">
                <a href="principalAsis.jsp?tipo=3&id=0"><i class="fa fa-fw fa-calendar"></i> Citas</a>
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
                        <i class="fa fa-home"></i> <a href="principalAsis.jsp?tipo=1"> Inicio</a>
                    </li>
                    <li>
                        <i class="fa fa-calendar"></i> Citas
                    </li>
                </ol>
            </div> 
        </div>
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
                                    <th>Asistente</th>
                                    <th>Cancelar</th>
                                    <th>Mostrar cita</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ResultSet rs = cita.consultar("select ci.\"idCita\", ci.hora,ci.fecha,pa.nombre,pa.\"apPaterno\",pa.\"apMaterno\", pe.nombre as medico,espe.\"nombreEspecialidad\" especialidad, per.nombre as asistente from clinica.citas ci inner join clinica.asistente asi on(ci.\"idAsistente\"=asi.\"idAsistente\") inner join clinica.medico me on(ci.\"idMedico\"=me.\"idMedico\") inner join clinica.paciente pa on(ci.\"idPaciente\"=pa.\"idPaciente\") inner join clinica.personal pe on(asi.\"idPersonal\"=pe.\"idPersonal\") inner join clinica.personal per on(per.\"idPersonal\"=me.\"idPersonal\") inner join clinica.especialidad espe on(per.id_espe=espe.\"idEspecialidad\") where ci.status = 'Pendiente';");
                                    if (rs.next()) {
                                        do {


                                %>
                                <tr class="odd gradeX">
                                    <td><%=rs.getString(4) + " " + rs.getString(5) + " " + rs.getString(6)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(7) + " con especialidad en: " + rs.getString(8)%></td>
                                    <td><%=rs.getString(9)%></td>
                                    <td>
                                        <a href="./controlCitas?id=2&idCancela=<%=rs.getString(1)%>" class="btn btn-primary btn-xs"><i class="fa fa-times" ></i></a>
                                    </td>
                                    <td>
                                        <a href="./controlPaciente?id=2&idEli=<%=rs.getString(1)%>" class="btn btn-primary btn-xs"><i class="fa fa-file-o"></i></a>
                                    </td>
                                </tr>
                                <%     } while (rs.next());
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                     <%@ include file="nuevaCita.jsp"%> 
                </div>
            </div>
        </div>
    </div>
</div>


