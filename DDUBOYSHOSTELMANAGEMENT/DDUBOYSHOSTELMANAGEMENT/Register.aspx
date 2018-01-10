<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <style type="text/css">
    
 </style>
       <title></title>
       <link rel="stylesheet" href="w3.css" /> <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css" />
    <link href="css/bill.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="css/a.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
       </head>
<body >
    <form id="form1" runat="server">
    
                <div style="width:600px"><a name="Payment"></a>


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
              </ul>
          
          
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    	 

        	
                    
            <div class="WindowMain" style="margin-top:6%;background-color:white">
 
                <h2 style="padding-left:0%;border-bottom:0.5px solid black;margin-right:40%";><strong> Registration Form </strong></h2>
        <table style="margin-top:3%;width:70%">
            <tr >
                 <div class="form-group">
                <td style="padding-top:20px"><strong>First Name:
                    </strong></td>
          <td>
              <asp:TextBox class="form-control" ID="TextBox1" runat="server"  style="margin-top:30px" required="true"></asp:TextBox>
                </td>
  </div>
          
                  </tr >
        <div class="form-group" >
 
                   <tr style="height:30px;">
                <td> <strong>Last  Name:</strong></td>
          <td>
              <asp:TextBox ID="TextBox2" class="form-control" runat="server" style="margin-top:10px" required="true"></asp:TextBox>
                  </td>
          
                  </tr>
        </div>
             <div class="form-group" >
              <tr >
                <td> <strong> phone no.</strong></td>
          <td>
              <asp:TextBox ID="TextBox3" runat="server" style="margin-top:10px" class="form-control" required="true"></asp:TextBox>
                  </td>
          
                  </tr>
                 </div>
         <div class="form-group">
              <tr>
                <td><strong> Guardian Name: </strong></td>
          <td>
              <asp:TextBox ID="TextBox4" runat="server" class="form-control" style="margin-top:10px" required="true"></asp:TextBox>
                  </td>
          
                  </tr>
        </div>
             <div class="form-group">
              <tr>
                <td> <strong> Guardian contact no.:</strong> </td>
          <td>
              <asp:TextBox ID="TextBox5" runat="server" class="form-control" style="margin-top:10px" required="true"></asp:TextBox>
                  </td>
          
                  </tr>
        </div>
             <div class="form-group">
              <tr >
                <td ><strong>Enter Address: </strong></td>
          <td>
              <asp:TextBox ID="TextBox6" runat="server" class="form-control" style="margin-top:10px" required="true"></asp:TextBox>
                  </td>
          
                  </tr>
        </div>
             <div class="form-group" >
              <tr>
                <td ><strong>Enter Branch: </strong></td>
          <td>
             <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFF99" style="margin-top:10px;" Height="30px" Width="100px">
                  <asp:ListItem>
                    ce
                  </asp:ListItem>
                  <asp:ListItem>
                      it
                  </asp:ListItem>
                  <asp:ListItem>
                         mh          
                  </asp:ListItem>    
                  <asp:ListItem>
                      cl
                  </asp:ListItem>
                       <asp:ListItem>ch</asp:ListItem>                                                                                                  </asp:DropDownList>
                  </td>
                      
                  </tr>
        </div>
        </table>

       		<div class="WindowProcess" style="margin-top:7%;margin-right:25%">

						<input type="button" class="BtnCancel" name="cancel" value="Cancel" onclick="location.href = 'http://localhost:55919/Registration.aspx';" pmbx_context="93A9C23F-16C6-4A39-88B3-278A5D22CE79">
			    <asp:Button ID="Button1" runat="server" Text="Proceed" class="BtnPay" OnClick="Button1_Click" ></asp:Button></td><td></td>
       
</div>
            </div>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="red" ControlToValidate="TextBox3" ErrorMessage="Contact No. should be of 10 digits" Display="None" ValidationExpression="[0-9]{10}" Text=" " EnableViewState="False"></asp:RegularExpressionValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="red" ControlToValidate="TextBox5" ErrorMessage="Contact No. should be of 10 digits" ValidationExpression="[0-9]{10}" Display="None" Text=" " EnableViewState="False"></asp:RegularExpressionValidator>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ddu.jpg" style="position:absolute;right:0%;top:7.5%" Height="650px" Width="875px"/>
                </div>
                <strong> 
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </strong>
    </form>
</body>
</html>
