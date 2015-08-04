<form action="./controlMedico?id=3" method="post">
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
                        <%
                            ResultSet r = medico.consultar("select * from clinica.personal inner join clinica.especialidad on(id_espe=\"idEspecialidad\") where tipo_personal = 2 and \"idPersonal\" = " + request.getParameter("id") + "and status = 'Activo';");
                            if (r.next()) {
                                do {
                        %>
                        <tr>
                            <td>
                                <label for="">Nombre</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(2)%>" name="nom">
                                    <input type="hidden" value="<%=r.getString(1)%>" name="idMed">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <label for="">Apellido paterno</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(3)%>" name="appat">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Apellido materno</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(4)%>" name="apamat">
                                </div><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Sexo</label><br />
                                <%
                                    int dato = Integer.parseInt(r.getString(1));
                                    out.print(medico.sexo("select sexo from clinica.personal where \"idPersonal\" = "+dato+" and tipo_personal = 2;"));
                                 %>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Telefono</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(6)%>" name="tel">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td colspan="2">
                                <label for="">Direccion</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(5)%>" name="dir">
                                </div><br/>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tab-pane fade" id="infoProfe">
                    <table>
                        <tr><br /></tr>
                        <tr>
                            <td>
                                <label for="">RFC</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(8)%>" name="rfcs">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <label for="">Cedula</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(12)%>" name="ced">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <label for="">Especialidad</label><br />
                                <%
                                    out.print(medico.especialidad(r.getString(16)));
                                 %>
                            </td>
                        </tr>
                    </table>
                </div>
                <% } while (r.next());
                    }
                %>
                <input class="btn btn-primary" type="submit" value="Actualizar informacion" />
                <a class="btn btn-primary" href="principalAdmin.jsp?tipo=2&id=0"> Cancelar</a>
            </div>
        </div>
    </div>
</form>