<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="modificarPaciente" class="modeloClinica.modeloClinica"></jsp:useBean>
<%
    ResultSet rs = modificarPaciente.consultar("select * from clinica.paciente where \"idPaciente\" = " + request.getParameter("id") + ";");
    if (rs.next()) {
        do {
%>
<<div class="panel panel-default">
    <div class="panel-body">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#infoPersonal" data-toggle="tab"><h4>Informacion personal</h4></a>
            </li>
            <li class=""><a href="#infoAcom" data-toggle="tab"><h4>Persona a cargo</h4></a>
            </li>
        </ul>
        <div class="tab-content">
            <form action="./controlPac?id=3" method="post">
                <div class="tab-pane fade active in" id="infoPersonal">
                <table>
                    <tr><br /></tr>
                    <tr>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(2)%>" name="nom">
                                <input type="hidden" value="<%=rs.getString(1)%>" name="idMod">
                            </div><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td >
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(3)%>" name="appat">
                            </div><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(4)%>" name="apmat">
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
                                <input class="form-control" type="text" value="<%=rs.getString(7)%>" name="tel">
                            </div><br/><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(2)%>">
                            </div><br/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <select type="text" name="ocup" class="form-control">          
                                <option selected="selected"> Ocupacion</option>          
                                <option value="Estiduante">  Estiduante</option>
                                <option value="Obrero"> Obrero</option>          
                                <option value="Profesionista">  Profesionista</option>
                                <option value="Ama de casa"> Ama de casa</option>          
                                <option value="Desempleado">  Desempleado</option>
                            </select><br/><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td colspan="3">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(6)%>" size="57" name="dir">
                            </div><br/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(10)%>" name="loc">
                            </div><br/><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(9)%>" name="mun">
                            </div><br/><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(8)%>" name="est">
                            </div><br/><br/>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tab-pane fade" id="infoAcom">
                <table>
                    <tr><br /></tr>
                    <tr>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(15)%>" name="pernom">
                            </div><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td >
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(16)%>" name="perpat">
                            </div><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(17)%>" name="permat">
                            </div><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(19)%>" name="percasa">
                            </div><br/><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(20)%>" name="permovil">
                            </div><br/><br/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                <input class="form-control" type="text" value="<%=rs.getString(18)%>" name="perdir">
                            </div><br/><br/>
                        </td>
                    </tr>
                </table>
            </div> 
          <input class="btn btn-primary" type="submit" value="Actualizar informacion" />
          <a class="btn btn-primary" href="principalAsis.jsp?tipo=2&id=0"> Cancelar</a>
            </form>
        </div>
    </div>
</div>
<% } while (rs.next());
    }%>