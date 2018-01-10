<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRoomBook2.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.NewRoomBook2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
           <link rel="stylesheet" href="w3.css" /> <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css" />
   
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="css/a.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
</head>
<body style="background-image:url('Images/A.png')">

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
            <li class="active" ><a href="#">Welcome to DDU BOYS HOSTEL</a></li>
            <li  ><a href="Registration.aspx"> Cancel Booking</a></li>
      
                 </ul>
          
          
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    

    <form id="form1" runat="server" >







  <div style="position:absolute;margin-top:4%;width:50%">        <asp:PlaceHolder runat="server" ID="PlaceHolder1" ></asp:PlaceHolder>
        
            <div style="margin-top:30%;margin-left:20%;color:white">            <asp:PlaceHolder runat="server" ID="ph1" ></asp:PlaceHolder>
          </div>
                  </div>
    <div  style="margin-left:60%;margin-top:7%;margin-bottom:10%;position:absolute;color:white">
    <b> Select Floor : </b> <asp:DropDownList ID="DropDownList1"  runat="server" style="color:black">
            <asp:ListItem Value="0">
            Ground floor
            </asp:ListItem>
            <asp:ListItem Value="1">
           1st floor
            </asp:ListItem>
<asp:ListItem Value="2" >
           2nd floor
            </asp:ListItem>
<asp:ListItem Value="3">
           3rd floor
            </asp:ListItem>

        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Height="25px" Class="btn-danger" Text="Show Availability" OnClick="Button1_Click" />
       <br />  <br /><br />  <br /><br />  <br />
         <div style="margin-top:5%;margin-left:3%;color:white">
     <b> Room Type: </b> <asp:DropDownList ID="DropDownList2" runat="server" style="color:black">
             <asp:ListItem Value="0">
            Non Deluxe
            </asp:ListItem>
            <asp:ListItem Value="1">
          Semi Deluxe  </asp:ListItem>
<asp:ListItem Value="2" >
          Deluxe
            </asp:ListItem>
         
        </asp:DropDownList>
    
       <asp:Button ID="Button2" runat="server" Height="25px" Class="btn-danger" Text="Filter" OnClick="Button2_Click" />
            
     </div>
          <br />  <br />  <br />  <br /><br />
        <div style="margin-top:5%;margin-left:3%;color:white">
          <span style="margin-right:7%"><b> Room number: </b> </span><asp:DropDownList style="color:black" ID="DropDownList3" runat="server"></asp:DropDownList>
         <asp:Button ID="Button3" runat="server" Height="25px" Class="btn-danger" Text="Book" style="margin-left:7%" OnClick="Button3_Click" />
       </div>
    </div>
    </form>
</body>
</html>
