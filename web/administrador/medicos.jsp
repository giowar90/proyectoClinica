<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="medico" class="modeloClinica.modeloClinica"></jsp:useBean>
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
                        <a href="index.jsp"><i class="fa fa-fw fa-power-off"></i> Cerrar sesion</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="principalAdmin.jsp?tipo=1&id=0"><i class=" fa fa-fw fa-home"></i> Inicio</a>
                </li>
                <li>
                    <a href="principalAdmin.jsp?tipo=4&id=0"><i class="fa fa-fw fa-user"></i> Paciente</a>
                </li>
                <li class="active">
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
                    <h1 class="page-header">
                        Medicos
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i><a href="principalAdmin.jsp?tipo=1&id=0"> Inicio </a>
                        </li>
                        <li class="active">
                            <i class="fa fa-user-md"></i> Medico
                        </li>
                    </ol>
                </div> 
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel-default">
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        if (id > 0) {%>
                    <%@ include file="ModMedico.jsp"%>
                    <%} else {
                        ResultSet rs = null;%>
                    <div class="row">
                        <div class="col-sm-12">
                            <%@ include file="altaMedico.jsp"%> 
                        </div>
                        <div class="col-sm-12">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Direccion</th>
                                            <th>Telefono</th>
                                            <th>Especialidad</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                            <th>Consultorio</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  rs = medico.consultar("select * from clinica.personal inner join clinica.especialidad on(id_espe=\"idEspecialidad\") where tipo_personal = 2 and status = 'Activo';");
                                            if (rs.next()) {
                                                do {
                                        %>
                                        <tr class="odd gradeX">
                                            
                                            <td><%=rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4)%></td>
                                            <td><%=rs.getString(5)%></td>
                                            <td><%=rs.getString(6)%></td>
                                            <td><%=rs.getString(16)%></td>
                                            <td>
                                                <a href="principalAdmin.jsp?tipo=2&id=<%=rs.getString(1)%>" class="btn btn-primary btn-xs"><i class="fa fa-pencil" ></i></a>
                                            </td>
                                            <td>
                                                <%@ include file="eliminar.jsp"%>
                                            </td>
                                            <td>
                                                <%@ include file="cosultorio.jsp"%>
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
