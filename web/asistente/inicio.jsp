<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">Clinica "La antesala de la muerte"</a>
    </div>
    <ul class="nav navbar-right top-nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%=session.getAttribute("usuario")%> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#"><i class="fa fa-fw fa-cog"></i> Configuración</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-key"></i> Nueva contraseña</a>
                </li>
                <li>
                    <a href="index.jsp"><i class="fa fa-fw fa-power-off"></i> Cerrar sesión</a>
                </li>
            </ul>
        </li>
    </ul>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li class="active">
                <a href="principalAsis.jsp?tipo=1"><i class=" fa fa-fw fa-home"></i> Inicio</a>
            </li>
            <li>
                <a href="principalAsis.jsp?tipo=4&id=0"><i class="fa fa-fw fa-user"></i> Paciente</a>
            </li>
            <li>
                <a href="principalAsis.jsp?tipo=2&id=0"><i class="fa fa-fw fa-user-md"></i> Medico</a>
            </li>
            <li>
                <a href="principalAsis.jsp?tipo=3&id=0"><i class="fa fa-fw fa-calendar"></i> Citas</a>
            </li>
        </ul>
    </div>
</nav>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Bienvenido
                    <small>Clinica "La antesala de la muerte"</small>
                </h1>
                <ol class="breadcrumb">
                    <li>
                        <i class="fa fa-home"></i> Inicio
                    </li>
                </ol>
            </div> 
        </div>
    </div>
</div>


