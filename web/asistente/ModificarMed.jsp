<form action="./controlMedi?id=3" method="post">
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
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(2)%>" name="nom">
                                    <input type="hidden" value="<%=r.getString(1)%>" name="idMed">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(3)%>" name="appat">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(4)%>" name="apamat">
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
                                    <input class="form-control" type="text" value="<%=r.getString(6)%>" name="tel">
                                </div><br/><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td colspan="2">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(5)%>" name="dir">
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
                                    <input class="form-control" type="text" value="<%=r.getString(8)%>" name="rfcs">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(12)%>" name="ced">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=r.getString(16)%>" disabled="disabled">
                                    <input type="hidden" value="<%=r.getString(13)%>" name="idEsp">
                                </div><br/>
                            </td>
                        </tr>
                    </table>
                </div>

                <% } while (r.next());
                    }
                %>
                <input class="btn btn-primary" type="submit" value="Actualizar informacion" />
                <a class="btn btn-primary" href="principalAsis.jsp?tipo=2&id=0"> Cancelar</a>
            </div>
        </div>
    </div>
</form>