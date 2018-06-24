<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TM_SmallJobs.MainFolder.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAvBQ1Q9FjYfxdWJF6KPmO822RMMbY2w2o"></script>
    <script>
        var map;
        function initialize() {
            map = new google.maps.Map(document.getElementById('map-canvas'), {
                zoom: 7,
                center: { lat: 25.7268826211526, lng: -100.264892578125 }
            });

            var marker = new google.maps.Marker({
                position: map.getCenter(),
                map: map,
                draggable: true,
                title: "Ubicacion de vacante"
            });

            google.maps.event.addListener(marker, 'dragend', function (event) {
                document.getElementById("coords").value = this.getPosition().toString();
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body onload="initialize()">
    <form id="form1" runat="server">

    <div class="col-md-12 col-sm-12">
        <input type="text" style="width:400px" id="coords" />
    <div>
<div class="col-md-6 " id="map-canvas" style="height:400px;"></div>
    
    </div>
    </form>

</body>
</html>
