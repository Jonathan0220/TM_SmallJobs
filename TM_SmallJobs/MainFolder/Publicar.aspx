<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Publicar.aspx.cs" Inherits="TM_SmallJobs.MainFolder.Publicar" %>

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
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,200' rel='stylesheet' type='text/css'/>
    <style type="text/css">
        body, html {
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
    <title></title>
</head>
<body onload="initialize()">
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
                     <h1 class="display-4 d-none d-sm-block">Publicar vacante</h1>
                    <hr />
                </div>
                <div class="container">
                    <form class="form-horizontal" runat="server" action="#">
                    <div class="form-group">
                      <asp:Label runat="server" class="control-label col-sm-2" for="Nombre">Nombre:</asp:Label>
                      <div class="col-sm-8">
                        <asp:TextBox runat="server" type="Text" class="form-control" id="Nombre" placeholder="Ingrese Nombre" name="Nombre"/>
                      </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-8">
                            <label for="categoria">Seleccione categoria</label>
                        <select class="form-control" id="categoria">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                            </div>
                      </div>
                    <div class="form-group">
                        <div class="col-sm-8">
                        <label for="descripcion">Descripcion del trabajo</label>
                            <textarea class="form-control" id="descripcion" rows="3" placeholder="Descripcion del trabajo"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
					  <label for="autocomplete" class="col-sm-2 control-label">Dirección</label>
					   <div class="col-sm-8">
					     <asp:TextBox runat="server" class="form-control" id="autocomplete" placeholder="Ingrese su dirección" onFocus="geolocate()" type="text"></asp:TextBox>
					   </div>
					</div>
                    <div class="form-group">
                      <asp:Label runat="server" class="control-label col-sm-2" for="precio">Precio:</asp:Label>
                      <div class="col-sm-8">
                        <asp:TextBox runat="server" type="Text" class="form-control" id="precio" placeholder="Ingrese precio" name="Nombre"/>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button runat="server" type="submit" class="btn btn-success" Text="Submit"/>
                      </div>
                    </div>
                  </form>
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
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
    <script src="../jquery/jquery.min.js"></script>
    <script src="../jquery/jquery.place.js"></script>
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
