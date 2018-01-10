<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartBooking.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.StartBooking" %>

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
    <div class="col-xs-6 col-sm-3 sidebar-offcanvas " style="position:absolute;top:20%;width:20%;right:0.5%" id="sidebar">
          <div class="list-group">
             <a href="#" class="list-group-item" style="background-color:darkcyan;color:white">Select an action:</a>
              
         <div class="list-group-item"><a href="WelcomeAdmin.aspx">1</a><a href="ShowNotice.aspx" style="margin-left:8px">2</a><a href="ConfigRoom.aspx" style="margin-left:8px">3</a><a href="StartBooking.aspx" style="margin-left:8px">4</a><a href="UpdateRecords.aspx" style="margin-left:8px">5</a></div>
              
         

                     
              <a href="WelcomeAdmin.aspx" class="list-group-item">1.Pin to NOTICE BOARD</a>
            <a href="ShowNotice.aspx" class="list-group-item ">2.View/Edit NOTICE BOARD</a>
  <a href="ConfigRoom.aspx" class="list-group-item">3.Configure Room Details</a>
            <a href="StartBooking.aspx" class="list-group-item active">4.Initiate Allotment procedure</a>
              <a href="UpdateRecords.aspx" class="list-group-item">5.Handle Hostel Residents </a>
       
        </div>
        </div>
        

    </div>
        <h3 style="margin-left:4%">FEES PAYMENT :</h3> 
        <div style="width:50%">
        <table style="margin-left:8%;">
            <tr height="30px" >
     <td> <strong> Enter phase</strong></td><td>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                        <asp:ListItem>newadmission</asp:ListItem>
                        <asp:ListItem>token</asp:ListItem>
                      </asp:DropDownList>
               </td>
                 </tr>
                     <tr height="30px">
              <td> <strong>NonDeluxe room fee</strong></td>
                         <td>
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="Nondeluxe room fee"></asp:TextBox>
        </td></tr >
            <tr height="30px"><td>
                <strong>       SemiDeluxe room fee </strong>
</td> <td>    
      <asp:TextBox ID="TextBox2" runat="server" placeholder="Semideluxe room fee"></asp:TextBox>
        </td></tr><tr height="30px"><td><strong>
Deluxe Room fee</strong>
</td>
            <td><asp:TextBox ID="TextBox3" runat="server" placeholder="deluxe room fee"></asp:TextBox>
        </td></tr>
            </table>
        </div>
            </p>
        <div style="margin-left:4%">
<b>            Enter Start Date:
</b>        <asp:Calendar ID="Calendar1" runat="server" Width="582px" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
          <br />
    <b>        Enter Last Date:</b>         
              <asp:Calendar ID="Calendar2" runat="server"  Width="582px" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month">
                  <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                  <DayStyle Width="14%" />
                  <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                  <OtherMonthDayStyle ForeColor="#999999" />
                  <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                  <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                  <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                  <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
      <br />       <asp:Button ID="Button1" runat="server" Text="Enable Booking" class="btn-success" OnClick="Button1_Click" />
    </div>
            </form>
    
</body>
</html>
