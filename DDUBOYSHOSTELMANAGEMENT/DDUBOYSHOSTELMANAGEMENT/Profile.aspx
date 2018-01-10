<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="w3.css" />
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
    <link href="css/bm.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="css/cover.css" rel="stylesheet" />
    <link href="css/a.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    
    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">

    
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
            <li  ><a href="Home.aspx">News Feed</a></li>
            <li ><a href="#about">About Us</a></li>
                <li ><a href="Registration.aspx">Log Out</a></li>

              </ul>
          
          
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    



        <div id="main" style="position:absolute;left:3%" >
             
           <h1><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span></h1>


            </div>

                      <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              
            </div>
          </div>
            
                
             
    
          <div class="inner cover" style="margin-top:5%">
         <!--   <h1 class="cover-heading"><i style="margin-left:2%" class="fa fa-user  fa-3x" aria-hidden="true"></i></h1>-->
          <asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder>
                  <p class="lead" style="margin-left:30%"> 
               <asp:FileUpload ID="FileUpload1" runat="server" /></p>
              <p class="lead">
              <asp:Button ID="Button1" runat="server" Text="Upload" class="btn btn-info" OnClick="Button1_Click" />
                 </p>
            <p class="lead">  <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder><p class="lead">
             </p>
         <p class="lead"> College ID  :           <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
 </p>                 
 <p class="lead">Room No.      :       <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder><i class='fa fa-key' aria-hidden='true' style='margin-left:2%;margin-right:1%'></i>
             </p>
                <p class="lead">Branch :          <asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>
             </p>
                  
                 </div>

          <div class="mastfoot">
            <div class="inner">
              <p>DDU BOYS HOSTEL <a href="http://getbootstrap.com">Copyrights</a>, by <a >@mdo</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>



          


                      
                          <div id="mySidenav" class="sidenav">
                                   <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
    
  <a href="Home.aspx">Home</a>
        <a href="Profile.aspx">Profile</a>
  <a href="#">Complaints</a>
  <a href="NewRoomBook.aspx">Room Booking</a>
  <a href="Registration.aspx">Log Out</a>
  
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> << </a>

</div>



   
    </form>
</body>
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
</html>
