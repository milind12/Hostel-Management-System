<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRoomBook.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.NewRoomBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
    
        <link rel="stylesheet" href="w3.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="css/a.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="css/signin.css" rel="stylesheet" />
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    
    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>



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
    
                  <div id="main">
             
           <h1><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;                             <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
                     <asp:Label ID="Label1" runat="server" Visible="False" Height="30px" Width="200px" ></asp:Label></span>
  </h1>





                      <div style="position:absolute;margin:2%;width:50%">        <asp:PlaceHolder runat="server" ID="PlaceHolder1" ></asp:PlaceHolder>
        
            <div style="margin-top:30%;margin-left:20%;color:black">            <asp:PlaceHolder runat="server" ID="ph1" ></asp:PlaceHolder>
          </div>
                  </div>
         <h5 style="margin-left:40%; padding-bottom:10px;border-bottom: 1px solid #eee;text-align:center;color:black"><b>Pay offline fees in 12 hrs orelse your booking will be cancelled </b></h5>
    <div  style="margin-left:60%;margin-top:3%;margin-bottom:10%;position:absolute;color:black">
    <b> Select Floor : </b> <asp:DropDownList ID="DropDownList1"  runat="server" style="color:black">
          
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
         <div style="margin-top:5%;margin-left:3%;color:black">
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
        <div style="margin-top:5%;margin-left:3%;color:black">
          <span style="margin-right:7%"><b> Room number: </b> </span><asp:DropDownList style="color:black" ID="DropDownList3" runat="server"></asp:DropDownList>
         <asp:Button ID="Button3" runat="server" Height="25px" Class="btn-danger" Text="Book" style="margin-left:7%" OnClick="Button3_Click" />
       </div>
    </div>

       <div id="mySidenav" class="sidenav"  style="text-align:center">
  <a href="Home.aspx">Home</a>
        <a href="Profile.aspx">Profile</a>
  <a href="#">Complaints</a>
  <a href="NewRoomBook.aspx">Room Booking</a>
  <a href="Registration.aspx">Log Out</a>
  
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> << </a>

</div>
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
