<form action="./controlMedi?id=1" method="post">
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
                            <h4 class="modal-title" id="myModalLabel">Nuevo medico</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12 col-sm-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <ul class="nav nav-tabs">
                                            <li 
                                                class="active"><a href="#infoPersonal" data-toggle="tab"><h4>Informacion personal</h4></a>
                                            </li>
                                            <li 
                                                class=""><a href="#infoProfe" data-toggle="tab"><h4>Informacion profesional</h4></a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane fade active in" id="infoPersonal">
                                                <table>
                                                    <tr><br /></tr>
                                                    <tr>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Nombre" name="nom">
                                                            </div><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td >
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Apellido paterno" name="appat">
                                                            </div><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Apellido materno" name="apamat">
                                                            </div><br/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <select type="text" name="sex" class="form-control">  
                                                                <option selected="selected"> Sexo</option> 
                                                                <option value="Masculino"> Masculino</option>          
                                                                <option value="femenino">  Fememnino</option>
                                                            </select><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Telefono" name="tel">
                                                            </div><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Direccion" name="dir">
                                                            </div><br/><br/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="infoProfe">
                                                <table>
                                                    <tr><br /></tr>
                                                    <tr>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="RFC" name="rfcs">
                                                            </div><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td >
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Cedula profecional" name="ced">
                                                            </div><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <select type="text" name="idEsp" class="form-control">  
                                                                <option selected="selected"> Especialidad</option> 
                                                                <%
                                                                    rs = medico.consultar("select * from clinica.especialidad");
                                                                    if (rs.next()) {
                                                                        do {
                                                                %>
                                                                <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option> 
                                                                <% } while (rs.next());
                                                                    }
                                                                %>
                                                            </select><br/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <select type="text" name="idEsp" class="form-control">  
                                                                <option selected="selected"> Consultorio</option> 
                                                                <%
                                                                    rs = medico.consultar("select \"idEspecialidad\",turnio,\"nombreConsul\" from clinica.\"consulEsp\" inner join clinica.consultorios on(\"idConsultorio\"=\"idConsul\") where \"idEspecialidad\" = 1 and status = 'Libre';");
                                                                    if (rs.next()) {
                                                                        do {
                                                                %>
                                                                <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%> - <%=rs.getString(3)%></option> 
                                                                <% } while (rs.next());
                                                                    }
                                                                %>
                                                            </select><br/>
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
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>