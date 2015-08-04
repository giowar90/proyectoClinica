<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="modificarPaciente" class="modeloClinica.modeloClinica"></jsp:useBean>
    <form action="./controlPaciente?id=3" method="post">
        <div class="panel panel-default">
            <div class="panel-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#infoPersonal" data-toggle="tab"><h4>Informacion personal</h4></a>
                    </li>
                    <li class=""><a href="#infoAcom" data-toggle="tab"><h4>Persona a cargo</h4></a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade active in" id="infoPersonal">
                    <%
                        ResultSet rs = modificarPaciente.consultar("select * from clinica.paciente where \"idPaciente\" = " + request.getParameter("id") + ";");
                        if (rs.next()) {
                            do {
                    %>
                    <table>
                        <tr><br /></tr>
                        <tr>
                            <td>
                                <label for="">Nombre</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(2)%>" name="nom">
                                    <input type="hidden" value="<%=rs.getString(1)%>" name="idMod">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <label for="">Apellido materno</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(3)%>" name="appat">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Apellido paterno</label><br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(4)%>" name="apmat">
                                </div><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Sexo</label><br />
                                <%
                                    int dato = Integer.parseInt(rs.getString(1));
                                    out.print(modificarPaciente.sexo("select sexo from clinica.paciente where \"idPaciente\" = "+dato+";"));
                                 %>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Telefono</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(7)%>" name="tel">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Ocupacion</label>
                                <%
                                    int ocupacion = Integer.parseInt(rs.getString(1));
                                    out.print(modificarPaciente.ocupacion(ocupacion));
                                 %>
                            </td>
                        </tr>
                        <tr>
                           <td colspan="3">
                               <label for="">Direccion</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(6)%>" size="57" name="dir">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Localidad</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(10)%>" name="loc">
                                </div><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Municipio</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(9)%>" name="mun">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Estado</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(8)%>" name="est">
                                </div><br/>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tab-pane fade" id="infoAcom">
                    <table>
                        <tr><br /></tr>
                        <tr>
                            <td>
                                <label for="">Nombre</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(15)%>" name="pernom">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <label for="">Apellido paterno</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(16)%>" name="perpat">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Apellido Materno</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(17)%>" name="permat">
                                </div><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Telefono de casa</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(19)%>" name="percasa">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Telefono movil</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(20)%>" name="permovil">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Direccion</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                    <input class="form-control" type="text" value="<%=rs.getString(18)%>" name="perdir">
                                </div><br/>
                            </td>
                        </tr>
                    </table>
                </div> 
                <% } while (rs.next());
                                }%>
                <input class="btn btn-primary" type="submit" value="Actualizar informacion" />
                <a class="btn btn-primary" href="principalAdmin.jsp?tipo=4&id=0"> Cancelar</a>
            </div>
        </div>
    </div>
</form>
