<%-- 
    Document   : newjsp
    Created on : 13/07/2015, 05:38:48 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/custom.css" rel="stylesheet" />
        <link href="assets/estilos.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/css/indexStyle.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica El Pasaje</title>
    </head>
    <body>
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <body data-spy="scroll" data-target="#navigation">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="wrapper" >
            <nav class="navbar navbar-inverse navbar-fixed-top" id="spy" role="navigation">
                <div class="container" >
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" >
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand text-uppercase" >Clínica El Pasaje</a>
                    </div>
                    <div class="collapse navbar-collapse" id="navigation">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#video">Inicio</a></li>
                            <li><a href="#anch1">Conócenos</a></li>
                            <li><a href="#anch2">Nuestro Equipo</a></li>
                            <li><li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b><font color="ffffff">Acceder</font></b> <span class="caret"></span></a>
                                <ul id="login-dp" class="dropdown-menu">
                                    <li>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p align="center" style="color: #262626;">Bienvenido</p>
                                                <form action="home.jsp" class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputEmail2">Usuario</label>
                                                        <input type="text" name="usuario" class="form-control" id="exampleInputEmail2" placeholder="Usuario" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputPassword2">Contraseña</label>
                                                        <input type="password" name="pass" class="form-control" id="exampleInputPassword2" placeholder="Contraseña" required>
                                                    </div>
                                                    <div class="bottom text-center">
                                                        <button type="submit" class=" btn-primary btn-block">Acceder</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div id="video">
                <header class="header" style="height: 670px" >
                    <div align="center">
                        <video class="video" id="video-background"  autoplay preload="auto" loop="loop" muted style="  height: 800px" >
                            <source src="assets/CSMLS.mp4" type='video/mp4'/>
                        </video>
                </header>
                <section id="home" class="pfblock-image screen-height" align="center">
                    <div class="intro">
                        <div class="cuadro_intro_hover ">
                            <p style="text-align:center; margin-top:20px;">
                            </p>
                            <div class="caption">
                                <div class="blur">
                                    <div class="caption-text">
                                        <h3 style="border-top:2px solid white; border-bottom:2px solid white; padding:10px;">Clinica "El Pasaje"</h3>
                                        <p>Cuidamos tu salud.</p>
                                        <a href="#anch1"><button type="button" style="height: 50px; width: 50px" class="btn btn-primary btn-lg btn3d">
                                                <span style="color: #f9f9f9;"class="fa fa-chevron-down " align="center"></span></button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
            </div>        
            <div id="anch1">
                <section class="section" >
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12"><br/>
                                <h1 align="center">Conócenos</h1>
                                <div class="col-lg-6 text-justify">
                                    <div class="media">
                                        <div class="media-middle">
                                            <img src="assets/img/logo2.jpg" style="height: 250px;width: 600px">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 text-justify">
                                    <p>En Clínica El Pasaje damos atención integral. Estamos especializados en el campo de la oncología.
                                        Aplicamos los más novedosos tratamientos contra el cáncer. Nuestro centro de investigación forma
                                        parte de la red de investigación médica más importante del mundo.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <section class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-justify">
                            <div class="col-lg-4">
                                <h4>Misión</h4>
                                <p>
                                    Brindar una atención médica con los más altos estándares de calidad buscando siempre
                                    la excelencia en nuestros servicios y buscando la satisfacción total de nuestros pacientes.
                                </p>
                            </div>
                            <div class="col-lg-4">
                                <h4>Visión</h4>
                                <p>
                                    Ser una institución médica líder a nivel mundial, promover la innovación médica a través de la implementación de tecnología de vanguardia.
                                    Consolidarnos como el centro de salud más importante en México.
                                </p>
                            </div>
                            <div class="col-lg-4">
                                <h4>Política de Calidad</h4>
                                <p>
                                    La clínica brinda una atención médica oportuna, profesional y tecnológica en un entorno de calidez y trabajo en equipo, creando así un ambiente cómodo y seguro para mejorar continuamente 
                                    la eficacia de nuestro sistema de administración de la calidad y de este modo lograr satisfacer las necesidades de nuestros pacientes y usuarios
                                </p>
                            </div>
                        </div>  
                        <section>
                            <div>
                                <h1 align="center">Equipo</h1>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <div class="container" >
                                            <div class="row">
                                                <div class="col-lg-3 col-sm-6">
                                                    <div class="card hovercard">
                                                        <div class="cardheader" id="anch2">
                                                        </div>
                                                        <div class="avatar" id="gio">
                                                            <img alt="" src="https://lh5.googleusercontent.com/-5QEBrFcKc4c/U74wwtVrjpI/AAAAAAAABRA/TIgoOnWrF-c/w578-h577-no/1507078_623518254409199_275756870071049793_n.jpg">
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="http://scripteden.com/">Giovanni Guerra</a>
                                                            </div>
                                                            <div class="desc">Senior Developer</div>
                                                            <div class="desc">Bebedor Compulsivo</div>
                                                            <div class="desc">Geek</div>
                                                        </div>
                                                        <div class="bottom">
                                                            <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/jaimeGGuerrra">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                            <a class="btn btn-danger btn-sm" rel="publisher"
                                                               href="https://plus.google.com/104664580470304585168/">
                                                                <i class="fa fa-google-plus"></i>
                                                            </a>
                                                            <a class="btn btn-primary btn-sm" rel="publisher"
                                                               href="https://www.facebook.com/profile.php?id=100002530894971&fref=ts">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="container" >
                                            <div class="row">
                                                <div class="col-lg-3 col-sm-6">
                                                    <div class="card hovercard">
                                                        <div class="cardheaderiva">
                                                        </div>
                                                        <div class="avatar" id="ivan">
                                                            <img alt="" src="https://scontent-dfw1-1.xx.fbcdn.net/hphotos-xta1/v/t1.0-9/1743730_10204715259142771_1582789835306995915_n.jpg?oh=df605eef199dacf1c0ebc8d5a4a56a5d&oe=561FB13E">
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="http://scripteden.com/">Ivan Rosas</a>
                                                            </div>
                                                            <div class="desc">Database Administrator</div>
                                                            <div class="desc">Miembro de GDG</div>
                                                            <div class="desc">Geek</div>
                                                        </div>
                                                        <div class="bottom">
                                                            <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/RiveraivanR">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                            <a class="btn btn-danger btn-sm" rel="publisher"
                                                               href="https://plus.google.com/u/0/110709473100713079130/posts">
                                                                <i class="fa fa-google-plus"></i>
                                                            </a>
                                                            <a class="btn btn-primary btn-sm" rel="publisher"
                                                               href="https://www.facebook.com/ivan.rosasrivera">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div></div>
                                    <div class="col-lg-3"><div class="container" >
                                            <div class="row">
                                                <div class="col-lg-3 col-sm-6">
                                                    <div class="card hovercard">
                                                        <div class="cardheaderoct">
                                                        </div>
                                                        <div class="avatar" id="tobi">
                                                            <img alt="" src="https://scontent-dfw1-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/551467_828897640531591_8381332436153824076_n.jpg?oh=85e0f04d27fedb4423d26bc14fd91c67&oe=562B4F7C">
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="http://scripteden.com/">Octavio Rodriguez</a>
                                                            </div>
                                                            <div class="desc">Junior Developer</div>
                                                            <div class="desc">Otaku</div>
                                                            <div class="desc">Inútil</div>
                                                        </div>
                                                        <div class="bottom">
                                                            <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/OctavioRV_Milan">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                            <a class="btn btn-danger btn-sm" rel="publisher"
                                                               href="https://plus.google.com/u/0/107361636599831727611/posts">
                                                                <i class="fa fa-google-plus"></i>
                                                            </a>
                                                            <a class="btn btn-primary btn-sm" rel="publisher"
                                                               href="https://www.facebook.com/octavio.rodriguez.3990418?fref=ts">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div></div>
                                    <div class="col-lg-3"><div class="container" >
                                            <div class="row">
                                                <div class="col-lg-3 col-sm-6">
                                                    <div class="card hovercard">
                                                        <div class="cardheaderand">
                                                        </div>
                                                        <div class="avatar" id="andres">
                                                            <img alt="" src="https://scontent-dfw1-1.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/11150945_465248233628723_881339010394043873_n.jpg?oh=f7626018e9bb941a8ffbe075836682d9&oe=56139ADE">
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="http://scripteden.com/">Andrés Zavala</a>
                                                            </div>
                                                            <div class="desc">Project Manager</div>
                                                            <div class="desc">GSA</div>
                                                            <div class="desc">Consultor</div>
                                                        </div>
                                                        <div class="bottom">
                                                            <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/andreszavalas">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                            <a class="btn btn-danger btn-sm" rel="publisher"
                                                               href="https://plus.google.com/u/0/+Andr%C3%A9sZavala/posts">
                                                                <i class="fa fa-google-plus"></i>
                                                            </a>
                                                            <a class="btn btn-primary btn-sm" rel="publisher"
                                                               href="https://www.facebook.com/AndresZavalaS?fref=ts">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </section>
            <footer class="footer text-center">
                <div class="container">
                    Desarrollado por GDG
                </div>
            </footer>
        </div>
        <script type="text/javascript">

            /*Menu-toggle*/
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("active");
            });

            /*Scroll Spy*/
            $('body').scrollspy({target: '#spy', offset: 80});

            /*Smooth link animation*/
            $('a[href*=#]:not([href=#])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        </script>
    </body>
</html>

