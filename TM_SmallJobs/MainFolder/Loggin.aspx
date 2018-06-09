<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loggin.aspx.cs" Inherits="TM_SmallJobs.MainFolder.Loggin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="icon" href="https://getbootstrap.com/favicon.ico"/>

    <title>Small Jobs</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet"/>
</head>
<body >
    <form class="form-signin" id="form1" runat="server">
        <img class="mb-4" src="../images/440727-best-no-game-no-life-wallpapers-1920x1200-laptop.jpg" alt="" width="200" height="200"/>
      <h1 class="h3 mb-3 font-weight-normal">Iniciar Sesión</h1>
      <asp:Label ID="Label1" for="inputEmail" runat="server" class="sr-only">Email address</asp:Label>
      <asp:TextBox runat="server" id="inputEmail" class="form-control" placeholder="Email address" required autofocus/>
      <asp:Label ID="Label2" runat="server" for="inputPassword" class="sr-only">Password</asp:Label>
      <asp:TextBox runat="server" type="password" id="inputPassword" class="form-control" placeholder="Password" required/>
      <div class="checkbox mb-3">
        <br />
      </div>
      <asp:Button ID="Button1" runat="server"  class="btn btn-lg btn-primary btn-block" type="submit" Text="Button"/>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018
        </p>
    </form>
</body>
</html>
