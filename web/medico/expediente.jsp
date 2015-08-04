<%@page import="java.sql.ResultSet"%>
<div class="row" style="float: right">
    <div class="col-md-12">
        <div class="col-sm-6">
            <a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"><i class="fa fa-file" ></i></a>
        </div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Expediente</h4>
                    </div>
                    <div class="modal-body">
                        <table>
                        <%
                            int idCita = Integer.parseInt(rs.getString(1));
                            ResultSet r = cia.consultar("select co.\"fechaEmision\",co.talla,co.peso,ex.\"Descripcion\" from clinica.consulta co inner join clinica.expediente ex on(co.\"idCosulta\"=ex.idconsulta)inner join clinica.citas ci on(co.\"idCita\"=ci.\"idCita\")inner join clinica.paciente pa on(pa.\"idPaciente\"=ci.\"idPaciente\") where pa.\"idPaciente\" = 1;");
                            if (r.next()) {
                                do {
                        %>
                        <tr>
                                <td>
                                    <label for="">Fecha</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-arrow-up fa-fw"></i></span>
                                        <input class="form-control" type="text" value="<%=r.getString(1)%>">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <label for="">Estatura</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-heart fa-fw"></i></span>
                                        <input class="form-control" type="text" value="<%=r.getString(2)%>">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <label for="">Peso</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-heart fa-fw"></i></span>
                                        <input class="form-control" type="text" value="<%=r.getString(3)%>">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <label for="">Cometarios</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-comment fa-fw"></i></span>
                                        <input class="form-control" type="text" value="<%=r.getString(4)%>">
                                    </div><br/>
                                </td>
                            </tr>
                        <%
                                } while (r.next());
                            }
                        %>
                         </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
