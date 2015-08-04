<form action="./controlConsulta?id=1" method="post">
    <div class="col-md-12 col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <ul class="nav nav-tabs">
                    <li 
                        class="active"><a href="#infoPersonal" data-toggle="tab"><h4>Consulta</h4></a>
                    </li>
                    <li 
                        class=""><a href="#infoProfe" data-toggle="tab"><h4>Receta</h4></a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade active in" id="infoPersonal">
                        <table>
                            <tr><br /></tr>
                            <tr>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-arrow-up"></i></span>
                                        <input class="form-control" type="text" placeholder="Estatura" name="altura">
                                        <input type="hidden" value="<%out.print(request.getParameter("id"));%>" name="idcita">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Peso" name="peso">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-money fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Precio de la consulta" name="costo">
                                    </div><br/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-comment fa-fw"></i></span>
                                        <textarea class="form-control" name="com" cols="95" rows="3" placeholder="Comentario"></textarea>
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
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Medicamento" name="rfcs">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Dosis" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Via" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tiempo" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tratamiento" name="ced">
                                    </div><br/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Medicamento" name="rfcs">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Dosis" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Via" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tiempo" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tratamiento" name="ced">
                                    </div><br/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Medicamento" name="rfcs">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Dosis" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Via" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tiempo" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tratamiento" name="ced">
                                    </div><br/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Medicamento" name="rfcs">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Dosis" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Via" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td >
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tiempo" name="ced">
                                    </div><br/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file fa-fw"></i></span>
                                        <input class="form-control" type="text" placeholder="Tratamiento" name="ced">
                                    </div><br/>
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
    <a class="btn btn-default" href="principalMedico.jsp?tipo=2&id=0"> Cancelar</a>
    <button type="submit" class="btn btn-primary">Guardar</button>
</div>
</form>