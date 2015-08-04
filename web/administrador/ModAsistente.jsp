<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="modificarAsistente" class="modeloClinica.modeloClinica"></jsp:useBean>
<%
    ResultSet rs = modificarAsistente.consultar("select * from clinica.personal where tipo_personal = 3 and \"idPersonal\" = " + request.getParameter("id") + ";");
    if (rs.next()) {
        do {
%>
<form action="./controlAsistente?id=3" method="post">
<div class="panel panel-default">
    <div class="panel-body">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#infoPersonal" data-toggle="tab"><h4>Informacion personal</h4></a>
            </li>
        </ul>
            <div class="tab-content">
                <div class="tab-pane fade active in" id="infoPersonal">
                    <table>
                        <tr><br /></tr>
                        <tr>
                            <td>
                                <label for="">Nombre</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" name="nom" value="<%=rs.getString(2)%>">
                                    <input  type="hidden" name="idAsi" value="<%=rs.getString(1)%>">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <label for="">Apellido paterno</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" name="appat" value="<%=rs.getString(3)%>">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Apellido materno</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" type="text" name="apamat" value="<%=rs.getString(4)%>">
                                </div><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Sexo</label>
                                <%
                                    int dato = Integer.parseInt(rs.getString(1));
                                    out.print(modificarAsistente.sexo("select sexo from clinica.personal where \"idPersonal\" = "+dato+" and tipo_personal = 3;"));
                                 %>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">Telefono</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                    <input class="form-control" type="text" name="tel" value="<%=rs.getString(6)%>">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <label for="">RFC</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                    <input class="form-control" type="text" name="rfcs" value="<%=rs.getString(8)%>">
                                </div><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Cedula</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                    <input class="form-control" type="text" name="ced" value="<%=rs.getString(12)%>">
                                </div><br/>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td colspan="3">
                                <label for="">Direccion</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                    <input class="form-control" type="text" name="dir" value="<%=rs.getString(5)%>" size="57">
                                </div><br/>
                            </td>
                        </tr>
                    </table>
                </div>
                <% } while (rs.next());
        }%>
                <input class="btn btn-primary" type="submit" value="Actualizar informacion" />
                <a class="btn btn-primary" href="principalAdmin.jsp?tipo=3&id=0"> Cancelar</a>
            </div>
    </div>
</div>
</form>
    