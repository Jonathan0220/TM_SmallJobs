<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voluntario.aspx.cs" Inherits="TM_SmallJobs.MainFolder.voluntario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <base target="_self"/>
    <meta name="description" content="Tu sitio en el cual encontraras empleos de todo tipo, no importa que tipo de trabajo busques Small Jobs te ayuda a encontrar" />
    <meta name="google" value="notranslate"/>
    <link rel="shortcut icon" href="../images/31914020_256442941566228_5771099761239130112_n.jpg"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <style type="text/css">body, html {
      height:100%;
    }

    /*
     * Off Canvas sidebar at medium breakpoint
     * --------------------------------------------------
     */
    @media screen and (max-width: 992px) {

      .row-offcanvas {
        position: relative;
        -webkit-transition: all 0.25s ease-out;
        -moz-transition: all 0.25s ease-out;
        transition: all 0.25s ease-out;
      }

      .row-offcanvas-left
      .sidebar-offcanvas {
        left: -33%;
      }

      .row-offcanvas-left.active {
        left: 33%;
        margin-left: -6px;
      }

      .sidebar-offcanvas {
        position: absolute;
        top: 0;
        width: 33%;
        height: 100%;
      }
    }

    /*
     * Off Canvas wider at sm breakpoint
     * --------------------------------------------------
     */
    @media screen and (max-width: 34em) {
      .row-offcanvas-left
      .sidebar-offcanvas {
        left: -45%;
      }

      .row-offcanvas-left.active {
        left: 45%;
        margin-left: -6px;
      }

      .sidebar-offcanvas {
        width: 45%;
      }
    }

    .card {
        overflow:hidden;
    }

    .card-body .rotate {
        z-index: 8;
        float: right;
        height: 100%;
    }

    .card-body .rotate i {
        color: rgba(20, 20, 20, 0.15);
        position: absolute;
        left: 0;
        left: auto;
        right: -10px;
        bottom: 0;
        display: block;
        -webkit-transform: rotate(-44deg);
        -moz-transform: rotate(-44deg);
        -o-transform: rotate(-44deg);
        -ms-transform: rotate(-44deg);
        transform: rotate(-44deg);
    }
</style>
    <title>Voluntario</title>
</head>
<body>
    <nav class="navbar fixed-top navbar-expand-md navbar-dark bg-primary mb-3">
    <div class="flex-row d-flex">
        <button type="button" class="navbar-toggler mr-2 " data-toggle="offcanvas" title="Toggle responsive left sidebar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#" title="Small Jobs">Small Jobs</a>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse" id="collapsingNavbar">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Inicio <span class="sr-only">Inicio</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Buscar Empleo</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Buscar Candidatos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Publicar Empleo</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#myAlert" data-toggle="collapse">Alert</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" data-target="#myModal" data-toggle="modal">About</a>
            </li>
        </ul>
    </div>
</nav>
    <div class="container-fluid" id="main">
        <div class="row row-offcanvas row-offcanvas-left">
            <div class="col-md-3 col-lg-2 sidebar-offcanvas bg-light pl-0" id="sidebar" role="navigation">
                <ul class="nav flex-column sticky-top pl-0 pt-5 mt-3">
                    <li class="nav-item"><a class="nav-link" href="#">Recomendaciones</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Mensajes</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Ajustes</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="#submenu1" data-toggle="collapse" data-target="#submenu1">Mas opciones ▾</a>
                        <ul class="list-unstyled flex-column pl-3 collapse" id="submenu1" aria-expanded="false">
                           <li class="nav-item"><a class="nav-link" href="#">Cerrar sesion</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col main pt-5 mt-3">
                <div class="container">
                    <form>
                      <div class="form-row">
                        <div class="col-sm-8">
                          <input type="text" class="form-control" placeholder="Buscar"/>
                        </div>
                        <div class="col-auto">
                          <button type="submit" class="btn btn-primary mb-2">Buscar</button>
                        </div>
                      </div>
                    </form>
                </div>
                <hr/>
                <div class="container">
                    <div class="jumbotron">
                      <h1 class="display-8">Proteccion civil voluntario</h1>
                      <p class="lead">Quieres ayudar a tu comunidad te estamos esperando ven con nosotros el equipo de proteccion civil te espera.</p>
                      <hr class="my-4">
                      <p>Se realizaran trabajos de supervicion de areas turisticas, previamente tomado un curso de primeros auxilios otorgado gratuitamente para el voluntario</p>
                      <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </div>
                    <div class="jumbotron">
                      <h1 class="display-8">Proteccion civil voluntario</h1>
                      <p class="lead">Quieres ayudar a tu comunidad te estamos esperando ven con nosotros el equipo de proteccion civil te espera.</p>
                      <hr class="my-4">
                      <p>Se realizaran trabajos de supervicion de areas turisticas, previamente tomado un curso de primeros auxilios otorgado gratuitamente para el voluntario</p>
                      <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </div>
                </div>
                <hr />
                <footer class="container-fluid">
                  <p class="text-center small">©2016-2018 Company</p>
              </footer>
            </div>
            </div>
    </div>
    <script>
    // sandbox disable popups
    if (window.self !== window.top && window.name!="view1") {;
      window.alert = function(){/*disable alert*/};
      window.confirm = function(){/*disable confirm*/};
      window.prompt = function(){/*disable prompt*/};
      window.open = function(){/*disable open*/};
    }

    // prevent href=# click jump
    document.addEventListener("DOMContentLoaded", function() {
      var links = document.getElementsByTagName("A");
      for(var i=0; i < links.length; i++) {
        if(links[i].href.indexOf('#')!=-1) {
          links[i].addEventListener("click", function(e) {
          console.debug("prevent href=# click");
              if (this.hash) {
                if (this.hash=="#") {
                  e.preventDefault();
                  return false;
                }
                else {
                  /*
                  var el = document.getElementById(this.hash.replace(/#/, ""));
                  if (el) {
                    el.scrollIntoView(true);
                  }
                  */
                }
              }
              return false;
          })
        }
      }
    }, false);
  </script>
    <!--scripts loaded here-->
    <script src="../jquery/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/affix.js"></script>
    <script>
  $(document).ready(function() {

  $('[data-toggle=offcanvas]').click(function() {
    $('.row-offcanvas').toggleClass('active');
  });

});
  </script>
</body>
</html>
