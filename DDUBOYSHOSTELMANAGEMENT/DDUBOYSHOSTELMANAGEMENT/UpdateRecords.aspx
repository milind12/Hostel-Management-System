<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateRecords.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.UpdateRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="w3.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet"/><link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css" />
    
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
     <link href="css/signin.css" rel="stylesheet" />
   
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
            <li><a href="Registration.aspx">Log Out</a></li>
              </ul>
          
          
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <form id="form1" runat="server">
    <div >
        
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Show all records" style="margin-left:15%" OnClick="Button1_Click" />

             <div class="col-xs-6 col-sm-3 sidebar-offcanvas " style="position:absolute;top:20%;width:20%;right:0.5%" id="sidebar">
          <div class="list-group">
           <a href="#" class="list-group-item" style="background-color:darkcyan;color:white">Select an action:</a>
         <div class="list-group-item"><a href="WelcomeAdmin.aspx">1</a><a href="ShowNotice.aspx" style="margin-left:8px">2</a><a href="ConfigRoom.aspx" style="margin-left:8px">3</a><a href="StartBooking.aspx" style="margin-left:8px">4</a><a href="UpdateRecords.aspx" style="margin-left:8px">5</a></div>
                <a href="WelcomeAdmin.aspx" class="list-group-item">1.Pin to NOTICE BOARD</a>
            <a href="ShowNotice.aspx" class="list-group-item">2.View/Edit NOTICE BOARD</a>
  <a href="ConfigRoom.aspx" class="list-group-item">3.Configure Room Details</a>
            <a href="StartBooking.aspx" class="list-group-item">4.Initiate Allotment procedure</a>
       <a href="UpdateRecords.aspx" class="list-group-item  active">5.Handle Hostel Residents </a>
      
                </div>
        </div>
         <asp:Button ID="Button4" runat="server" CssClass="btn btn-info" Text="Show Booking Status" OnClick="Button4_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Update student Records" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="Show Existing Records" OnClick="Button3_Click" />
      
       
         <div style="width:75%">
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </div>
        </div>
    </form>
</body>
</html>
