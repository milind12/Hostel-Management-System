<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfigRoom.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.ConfigRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link rel="stylesheet" href="w3.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
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
    <div>
        <h3 align="center">  CONFIGURE ROOM DETAILS </h3>
        <div style="color:red;margin-left:16%;margin-top:2%;margin-bottom:2%">
            
       <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
 
          <table class="table" style="width:75%;border-right:0.5px solid lightgrey">
        <tr height="50px">
            <td rowspan="2" align="center">
    Floor 0 </td>

            <td>
       Starting Room number:<asp:TextBox runat="server" ID="TextBox1"  ></asp:TextBox></td>
            
</tr>
        <tr>
<td>
            
    Ending Room number:
            <asp:TextBox runat="server" ID="TextBox2" ></asp:TextBox></td>

        </tr>
         <tr height="50px">
            <td rowspan="2" align="center">
    Floor 1 </td>

            <td>
       Starting Room number:<asp:TextBox runat="server" ID="TextBox3"  ></asp:TextBox></td>
            
</tr>
        <tr>
<td>
            
    Ending Room number:
            <asp:TextBox runat="server" ID="TextBox4" ></asp:TextBox></td>

        </tr>
         <tr height="50px">
            <td rowspan="2" align="center">
    Floor 2 </td>

            <td>
       Starting Room number:<asp:TextBox runat="server" ID="TextBox5"  ></asp:TextBox></td>
            
</tr>
        <tr>
<td>
            
    Ending Room number:
            <asp:TextBox runat="server" ID="TextBox6" ></asp:TextBox></td>
            </tr>
             <tr height="50px">
            <td rowspan="2" align="center">
    Floor 3 </td>

            <td>
       Starting Room number:<asp:TextBox runat="server" ID="TextBox7"  ></asp:TextBox></td>
            
</tr>
        <tr>
<td>
            
    Ending Room number:
            <asp:TextBox runat="server" ID="TextBox8" ></asp:TextBox></td>

        </tr>
            <tr>
                <td >
<div style="margin-left:100%" >        <asp:Button ID="Button1" runat="server" Text="Click me " class="btn-danger" OnClick="Button1_Click"/>
              </tr>
 </table>
        <div style="margin-top:3%;margin-left:10%;margin-bottom:3%">
           <b>Please select deluxe rooms :</b>
        </div>
  
      <asp:ListBox runat="server" style="margin-left:10%" ID="ListBox1"></asp:ListBox>
          <asp:ListBox runat="server" ID="ListBox2" style="margin-left:8%"></asp:ListBox>
  
        
              <div class="col-xs-6 col-sm-3 sidebar-offcanvas " style="position:absolute;top:20%;width:20%;right:0.5%" id="sidebar">
          <div class="list-group">
            <a href="#" class="list-group-item" style="background-color:darkcyan;color:white">Select an action:</a>
              
 <div class="list-group-item"><a href="WelcomeAdmin.aspx">1</a><a href="ShowNotice.aspx" style="margin-left:8px">2</a><a href="ConfigRoom.aspx" style="margin-left:8px">3</a><a href="StartBooking.aspx" style="margin-left:8px">4</a><a href="UpdateRecords.aspx" style="margin-left:8px">5</a></div>
                <a href="WelcomeAdmin.aspx" class="list-group-item">1.Pin to NOTICE BOARD</a>
            <a href="ShowNotice.aspx" class="list-group-item ">2.View/Edit NOTICE BOARD</a>
  <a href="ConfigRoom.aspx" class="list-group-item active">3.Configure Room Details</a>
            <a href="StartBooking.aspx" class="list-group-item">4.Initiate Allotment procedure</a>
       <a href="UpdateRecords.aspx" class="list-group-item">5.Handle Hostel Residents </a>
             </div>
        </div>
        


    
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" class="btn-danger" style="margin-left:10%" Text="Add" OnClick="Button2_Click" />
          <asp:Button ID="Button4" runat="server" Text="Remove" style="margin-left:5%" class="btn-danger" OnClick="Button4_Click"/>
        <br />
        <div style="margin-top:3%;margin-left:10%;margin-bottom:3%">
           <b> Please select semi deluxe rooms :</b>
        </div>
  
          <asp:ListBox runat="server" style="margin-left:10%" ID="ListBox3"></asp:ListBox>
          <asp:ListBox runat="server" ID="ListBox4" style="margin-left:8%"></asp:ListBox>
  
        
              <br /><br />
        </div>
          <asp:Button ID="Button3" runat="server" Text="Add" style="margin-left:10%" class="btn-danger" OnClick="Button3_Click"/>
          <asp:Button ID="Button5" runat="server" Text="Remove" style="margin-left:5%" class="btn-danger" OnClick="Button5_Click"/>
        
          
        <p>
    &nbsp;</p>
           <b> 
        </b>
          <asp:Button ID="Button6" runat="server" Text="Save Changes" style="margin-left:10%" class="btn-danger" OnClick="Button6_Click"/>
    <asp:Button ID="Button7" runat="server" Text="Reset" class="btn-danger" OnClick="Button7_Click"/>
   
                </form>
</body>
</html>
