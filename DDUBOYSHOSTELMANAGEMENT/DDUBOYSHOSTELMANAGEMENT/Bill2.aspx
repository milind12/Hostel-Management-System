<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill2.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.Bill2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <link href="css/bill.css" rel="stylesheet"/>
   
        <link rel="stylesheet" href="w3.css" /> <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css" />
   
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="css/a.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="css/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
         <!--
     <table class="table" style="color:darkcyan;margin-left:25%;margin-top:13%;width:50%">
        <tr>
            <td>Name :</td><td></td>
        </tr>
        <tr>
        

    </table>    </div>
        -->
         <div class="WindowContainer"><a name="Payment"></a>
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
    	 
	
			
	<div class="WindowMain" style="margin-top:5%">

					
				<div class="WindowCardBrands">
						<img class="CardBrand" border="0" src="Images/Helcim-CardBrands-Visa01.png">
						<img class="CardBrand" border="0" src="Images/Helcim-CardBrands-MasterCard01.png">
						<img class="CardBrand" border="0" src="Images/Helcim-CardBrands-Discover01.png">
						<img class="CardBrand" border="0" src="Images/Helcim-CardBrands-Amex01.png">
				
		</div>

		
		<div class="WindowSub">

			<h2>Billing Information</h2>
            <strong>
                		<table class="Input">
			<tbody><tr>
			<td class="Left">Name:</td>
			<td class="Right">
					<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>	</td>
			</tr>
			<tr>
			<td class="Left">Address:</td>
			<td class="Right">
						<asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>	</td>
			</tr>
			

			<tr>
			<td class="Left"> Contact no.:</td>
			<td class="Right"><asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
				</td></tr>
			
                <tr>
			<td class="Left">Room no.:</td>
			<td class="Right">
<asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>				</td>
			</tr>
                
                
                <tr>
			<td class="Left">Bill amount:</td>
			<td class="Right">
<asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder>				</td>
			</tr>
			
			</tbody></table>

		</div>

		
		
		
		
		

		
		<div class="WindowSub">

			<h2>Credit Card Information</h2>

			<table class="Input">
			<tbody><tr>
			<td class="Left">Credit Card Number:</td>
			<td class="Right"><input type="text" class="TxtLarge" name="cardNumber" value="" pmbx_context="D08E6CF9-F3C5-4CC9-914D-9400E1DAACE2"></td>
			</tr>
			<tr>
			<td class="Left">Expiry Date:</td>
			<td class="Right">
				<div class="Cbo">
					<select name="month">
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
											</select>
				</div><div class="Cbo">
					<select name="year">
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
											</select>
				</div>
			</td>
			</tr>
						<tr>
			<td class="Left">CVV (Security Code):</td>
			<td class="Right"><input type="text" class="TxtSmall" name="cvv" value="" pmbx_context="01D4D5D0-3E53-439A-8CA3-E3D89FB6E009">
			</td>
			</tr>
						</tbody></table>

		</div>

		<div class="WindowProcess">

						<input type="button" class="BtnCancel" name="cancel" value="Cancel" onclick="location.href = 'http://localhost:55919/Registration.aspx';" pmbx_context="93A9C23F-16C6-4A39-88B3-278A5D22CE79">
					<!--	<input type="submit" class="BtnPay" id="BtnPay" name="process" onclick="document.getElementById('BtnPay').value = 'Please Wait...';" value="Process Payment" pmbx_context="5564BFFA-39E0-441A-8A12-827A89605A82">
        -->     <asp:Button ID="Button1" runat="server" Text="Process Payment" class="BtnPay" OnClick="Button1_Click" ></asp:Button></td><td></td>
       
			

		</div>

	</div>
             </strong>
	
	<div class="WindowLinks">

		<a href="#" style="color:blue" onclick="PoliciesToggle();">» VIEW MERCHANT POLICIES</a><br><br>

		<img border="0" src="Images/Helcim-SecurityIcon01.png">		<a href="https://www.helcim.com/" target="_blank"><img border="0" src="Images/Helcim-PaymentsBy01.png"></a>		
	</div>

	<div class="WindowMain" id="Policies" style="display: none;">

		<h3><a name="Policies" >Merchant's Policies</a></h3>

		<p class="Policies">
		Acme Services Inc<br>
		http://www.helcim.com<br>
		403-1300 8th Street SW<br>
		Calgary, AB &nbsp;<br>
		1 (877) 643-5246<br><br>

		
		<br><br><a href="https://gatewaytest.helcim.com/hosted/?merchantId=9999200106&amp;token=fd17d60b5838bch2i#Payment" onclick="PoliciesToggle();">» HIDE POLICIES</a>
		</p>

	</div>


</div>

    </div>
    </form>
</body>
</html>
