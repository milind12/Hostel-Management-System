<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="w3.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css" />
    <!-- Bootstrap theme -->

    <link href="css/a.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="css/signin.css" rel="stylesheet" />
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    
    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet"/>
    </head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
    
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            <a class="navbar-brand r navbar-left"><span><img height="36px"style="position:absolute;left:5%;top:10px" width="35px" src="Images/download.png" /></span></a>
          <a class="navbar-brand r" style="color:white" href="#"> <span>DHARMSINH DESAI UNIVERSITY BOYS HOSTEL</span></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li  class="active"><a href="Registration.aspx">News Feed</a></li>
            <li ><a href="#about">About Us</a></li>
                <li ><a href="Registration.aspx">Log Out</a></li>

              </ul>
          
          
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    


    <form id="form1" runat="server">
      
          <div id="main">
             
           <h1><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;    
                             <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
                <asp:Label ID="Label1" runat="server" Visible="False" Height="30px" Width="200px" ></asp:Label></span>
  </h1>
             <asp:Image ImageUrl="Images/download.jpg" runat="server" style="position:absolute;width:15%;left:20%;top:40%"/>
              <div style="position:absolute;width:60%;top:30%;right:2%">              <asp:PlaceHolder ID="PlaceHolder1" runat="server" ></asp:PlaceHolder>
              </div>

        
  <p></p>
    

         </div>
    <div id="mySidenav" class="sidenav" style="text-align:center">
       
  <a href="#">Home</a>
        <a href="Profile.aspx">Profile</a>
  <a href="#">Complaints</a>
  <a href="NewRoomBook.aspx">Room Booking</a>
  <a href="Registration.aspx">Log Out</a>
  
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> << </a>

</div>
      </form>
  </body>
</html>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>
