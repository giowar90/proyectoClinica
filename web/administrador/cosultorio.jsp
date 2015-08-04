<div class="row">
    <div class="col-sm-12">
        <div class="col-sm-6">
            <a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#consultorio"><i class="fa fa-hospital-o"></i></a>
        </div>
        <div class="modal fade" id="consultorio" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="Heading">Seelccionar consultorio</h4>
                    </div>
                    <form action="./controlMedico?id=2" method="post">
                        <div class="modal-body center-block">
                        <table>
                            <tr><br /></tr>
                            <tr>
                                <td>
                                    <label for="">Consultorio</label><br />
                                    <%
                                        int idE = Integer.parseInt(rs.getString("idEspecialidad"));
                                        out.print(medico.especialidades("select con.\"idConsul\",con.\"nombreConsul\",ce.turnio from clinica.especialidad esp inner join clinica.\"consulEsp\" ce on(esp.\"idEspecialidad\"=ce.\"idEspecialidad\") inner join clinica.consultorios con on(con.\"idConsul\"=ce.\"idConsultorio\") where ce.status = 'Libre' and esp.\"idEspecialidad\" = "+idE+";"));
                                    %>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer ">
                        <button type="submit" class="btn btn-success" data-dismiss="modal"><span class="glyphicon glyphicon-ok-sign"></span> Selecionar</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancelar</button>
                    </div>
                    </form>
                </div> 
            </div>
        </div>
    </div>
</div>