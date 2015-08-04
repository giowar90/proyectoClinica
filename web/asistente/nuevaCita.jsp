<jsp:useBean id="ci" class="modeloClinica.modeloClinica"></jsp:useBean>
    <form action="./controlCitas?id=1" method="post">
        <input type="hidden" name="idasi" value="<%=session.getAttribute("usuario")%>" />
        <div class="row" style="float: right">
            <div class="col-md-12">
                <div class="col-sm-6">
                    <a class="btn btn-primary btn-circle" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus" ></i></a>
                </div>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Nueva cita</h4>
                            </div>
                            <div class="modal-body">
                                <div class="col-md-12 col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <ul class="nav nav-tabs">
                                                <li class="active"><a href="#infoPersonal" data-toggle="tab"><h4>Informacion para la cita</h4></a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane fade active in" id="infoPersonal">
                                                    <table>
                                                        <tr><br /></tr>
                                                        <tr>
                                                            <td>
                                                                <div class="input-group">
                                                                    <span class="input-group-addon"><i class="fa fa-user fa-clock-o"></i></span>
                                                                    <input class="form-control" type="time" placeholder="Hora" name="ho" size="50px">
                                                                </div><br/>
                                                            </td>
                                                            <td>&nbsp;&nbsp;&nbsp;</td>
                                                            <td >
                                                                <div class="input-group">
                                                                    <span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
                                                                    <input class="form-control" type="date" placeholder="Fecha" name="fec">
                                                                </div><br/>
                                                            </td>
                                                            <td>&nbsp;&nbsp;&nbsp;</td>
                                                            <td>
                                                                <select type="text" name="idmedico" class="form-control">  
                                                                    <option selected="selected"> Medico - Especialidad</option> 
                                                                <%
                                                                    rs = ci.consultar("select esp.\"idEspecialidad\",esp.\"nombreEspecialidad\",per.nombre from clinica.especialidad esp inner join clinica.personal per on(esp.\"idEspecialidad\"=per.id_espe) where per.tipo_personal = 2;");
                                                                    if (rs.next()) {
                                                                        do {
                                                                %>
                                                                <option value="<%=rs.getString(1)%>"><%=rs.getString(3)%> - <%=rs.getString(2)%></option> 
                                                                <%
                                                                        } while (rs.next());
                                                                    }
                                                                %>
                                                            </select><br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <select type="text" name="idpaciente" class="form-control">  
                                                                <option selected="selected"> Pacientes</option> 
                                                                <%
                                                                    rs = ci.consultar("select * from clinica.paciente where status = 'Activo';");
                                                                    if (rs.next()) {
                                                                        do {
                                                                %>
                                                                <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%> <%=rs.getString(3)%> <%=rs.getString(4)%></option> 
                                                                <%
                                                                        } while (rs.next());
                                                                    }
                                                                %>
                                                            </select><br />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <input type="submit" class="btn btn-primary" value="Guardar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
