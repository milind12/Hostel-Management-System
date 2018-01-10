<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="w3.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    
    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet"/>
    <link href="css/signin.css" rel="stylesheet" />
    <link href="css/abc.css" rel="stylesheet" />
     <style>
        

    </style>

</head>

<body><nav class="navbar navbar-inverse navbar-fixed-top">
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
            <li  class="active"><a href="#">Home</a></li>
            <li><a href="Admission.aspx">New Admission</a></li>
            <li><a href="ContactUs.aspx">Contact</a></li>
              </ul>
          
          
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
<div >

<img class="mySlides" src="Images/img1.jpg" style="width:1370px;height:422px;margin-left:0px" />
<img class="mySlides" src="Images/img2.jpg" style="width:1370px;height:422px;margin-left:0px" />
<img class="mySlides" src="Images/img3.jpeg" style="width:1370px;height:422px;margin-left:0px" />
<img class="mySlides" src="Images/img4.jpg" style="width:1370px;height:422px;margin-left:0px" />
    </div>

        <div style="margin-bottom:120px">
           
            <div >

                <form id="form1" class="form-signin" style="margin-top:6px" runat="server" >
        
            <div style="background-color:red"><h3 style="position:absolute;left:20px;"> 
                
                <br /> <strong> ENTER YOUR COLLEGE ID AS    <br /> USERNAME AND PASSWORD<br />  TO SIGN IN TO YOUR <br /> <font style="color:red">"DDU BOYS HOSTEL"</font> ACCOUNT  </strong></h3> 
   </div> 
        
        <label for="inputName" class="sr-only">Name</label>
                    <asp:PlaceHolder ID="Ph1" runat="server"></asp:PlaceHolder>
                    <br />
                                       <asp:TextBox ID="TextBox1" class="form-control" placeholder="Username" runat="server" required="true" autofocus="true"></asp:TextBox>
       
        <label for="inputCollegeId" class="sr-only">CollegeId</label>
        <asp:TextBox ID="TextBox2" class="form-control" placeholder="CollegeId" runat="server" required="true" autofocus="true"></asp:TextBox>
       
            <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block" runat="server" Text="Sign in" OnClick="Button1_Click" />
        
       
                   
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
       
                   
      </form>
            </div>
            </div>


<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 5000); // Change image every 2 seconds
    }
</script>

      <!-- START THE FEATURETTES -->
   <h1 style="color:blue" align="center"><strong>Your Care Our Priority </strong> </h1>           

  
        <div class="col-md-7" >
          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" style="margin-top:100px" src="Images/i.png" alt="Generic placeholder image">
        </div>
     

      <hr class="featurette-divider">

      
        <div class="col-md-7 col-md-push-5" >
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" style="margin-top:100px" width="500" src="Images/im.jpg" alt="Generic placeholder image">
        </div>
     

      <hr class="featurette-divider">

        <div class="col-md-7" >
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block"  height="400" width="400" src="Images/img.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">
        </div>
 
      <!-- /END THE FEATURETTES -->

    
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        
      </footer>  
</body>
</html>
