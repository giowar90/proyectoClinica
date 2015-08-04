<div class="row">
    <div class="col-sm-12">
        <div class="col-sm-6">
            <a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#delete"><i class="fa fa-trash-o"></i></a>
        </div>
        <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="Heading">Eliminar medico</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> ¿Esta seguro de eliminar al medico?</div>
                    </div>
                    <div class="modal-footer ">
                        <a href="./controlMedico?id=2&idEli=<%=rs.getString(1)%>" class="btn btn-success"><span class="glyphicon glyphicon-ok-sign"></span> Si</a>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</div>