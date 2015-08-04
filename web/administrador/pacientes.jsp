<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="paciente" class="modeloClinica.modeloClinica"></jsp:useBean>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="principalAdmin.jsp?tipo=1&id=0">Clinica "El paisaje"</a>
        </div>
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Administrador <b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li>
                        <a href="index.jsp"><i class="fa fa-fw fa-power-off"></i> Cerrar Sesion</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="principalAdmin.jsp?tipo=1&id=0"><i class=" fa fa-fw fa-home"></i> Inicio</a>
                </li>
                <li class="active">
                    <a href="principalAdmin.jsp?tipo=4&id=0"><i class="fa fa-fw fa-user"></i> Paciente</a>
                </li>
                <li>
                    <a href="principalAdmin.jsp?tipo=2&id=0"><i class="fa fa-fw fa-user-md"></i> Medico</a>
                </li>
                <li>
                    <a href="principalAdmin.jsp?tipo=3&id=0"><i class="fa fa-fw fa-asterisk"></i> Asistentes</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Pacientes</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i><a href="principalAdmin.jsp?tipo=1&id=0"> Inicio </a>
                        </li>
                        <li class="active">
                            <i class="fa fa-user"></i> Paciente
                        </li>
                    </ol>
                </div> 
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel-default">
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        if (id >= 1) {%>
                    <%@ include file="ModPaciente.jsp"%>
                    <%} else {%>
                    <div class="row">
                        <div class="col-md-12">
                            <%@ include file="altaPaciente.jsp"%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example"> 
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Direccion</th>
                                            <th>Telefono</th>
                                            <th>Responsable</th>
                                            <th>Tel. casa</th>
                                            <th>Tel. movil</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            ResultSet rs = paciente.consultar("select * from clinica.paciente where status = 'Activo';");
                                            if (rs.next()) {
                                                do {
                                        %>
                                        <tr class="odd gradeX">
                                            <td><%=rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4)%></td>
                                            <td><%=rs.getString(6)%></td>
                                            <td><%=rs.getString(7)%></td>
                                            <td><%=rs.getString(15) + " " + rs.getString(16) + " " + rs.getString(17)%></td>
                                            <td><%=rs.getString(19)%></td>
                                            <td><%=rs.getString(20)%></td>
                                            <td>
                                                <a href="principalAdmin.jsp?tipo=4&id=<%=rs.getString(1)%>" class="btn btn-primary btn-xs"><i class="fa fa-pencil" ></i></a>
                                            </td>
                                            <td>
                                                <a href="./controlPaciente?id=2&idEli=<%=rs.getString(1)%>" class="btn btn-primary btn-xs"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                        <%     } while (rs.next());
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</div>    
