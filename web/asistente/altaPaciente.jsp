<form action="./controlPac?id=1" method="post">
    <div class="row" style="float: right">
        <div class="col-md-12">
            <div class="col-sm-6">
                <a class="btn btn-primary" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus" ></i></a>
            </div>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Nuevo paciente</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12 col-sm-12">
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
                                                                <input class="form-control" type="text" placeholder="Apellido materno" name="apmat">
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
                                                                <input class="form-control" type="text" placeholder="Telefono casa" name="tel">
                                                            </div><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Telefono celualr">
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
                                                                <input class="form-control" type="text" placeholder="Direccion" size="57" name="dir">
                                                            </div><br/><br/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Localidad" name="loc">
                                                            </div><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Municipio" name="mun">
                                                            </div><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Estado" name="est">
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
                                                                <input class="form-control" type="text" placeholder="Nombre" name="pernom">
                                                            </div><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td >
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Apellido paterno" name="perpat">
                                                            </div><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Apellido materno" name="permat">
                                                            </div><br/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Telefono casa" name="percasa">
                                                            </div><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Telefono celualr" name="permovil">
                                                            </div><br/><br/>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span>
                                                                <input class="form-control" type="text" placeholder="Direccion" name="perdir">
                                                            </div><br/><br/>
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
