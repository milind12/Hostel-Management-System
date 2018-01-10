<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowNotice.aspx.cs" Inherits="DDUBOYSHOSTELMANAGEMENT.ShowNotice" %>

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
    <div>
    <asp:Image ImageUrl="Images/edit.png" runat="server"/>
        <div style="color:darkcyan;border-bottom:1px solid;border-bottom-color:lightgray;width:60%;padding-bottom:4%;margin-left:2%;margin-top:5%">        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="notice_no" DataSourceID="SqlDataSource1" Width="661px" >
                <Columns>
                    <asp:BoundField DataField="notice_no" HeaderText="notice_no" InsertVisible="False" ReadOnly="True" SortExpression="notice_no" />
                    <asp:BoundField DataField="notice_details" HeaderText="notice_details" SortExpression="notice_details" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" DataFormatString="{0:d}" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <SelectedRowStyle Height="30px" />
            </asp:GridView>
        </div>



         <div class="col-xs-6 col-sm-3 sidebar-offcanvas " style="position:absolute;top:20%;width:20%;right:0.5%" id="sidebar">
          <div class="list-group">
           <a href="#" class="list-group-item" style="background-color:darkcyan;color:white">Select an action:</a>
         <div class="list-group-item"><a href="WelcomeAdmin.aspx">1</a><a href="ShowNotice.aspx" style="margin-left:8px">2</a><a href="ConfigRoom.aspx" style="margin-left:8px">3</a><a href="StartBooking.aspx" style="margin-left:8px">4</a><a href="UpdateRecords.aspx" style="margin-left:8px">5</a></div>
                <a href="WelcomeAdmin.aspx" class="list-group-item">1.Pin to NOTICE BOARD</a>
            <a href="#" class="list-group-item active">2.View/Edit NOTICE BOARD</a>
  <a href="ConfigRoom.aspx" class="list-group-item">3.Configure Room Details</a>
            <a href="StartBooking.aspx" class="list-group-item">4.Initiate Allotment procedure</a>
                     <a href="UpdateRecords.aspx" class="list-group-item">5.Handle Hostel Residents </a>

        </div>
        </div>
        
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DDUConnectionString %>" DeleteCommand="DELETE FROM [noticeboard] WHERE [notice_no] = @original_notice_no AND (([notice_details] = @original_notice_details) OR ([notice_details] IS NULL AND @original_notice_details IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" InsertCommand="INSERT INTO [noticeboard] ([notice_details], [date]) VALUES (@notice_details, @date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [noticeboard]" UpdateCommand="UPDATE [noticeboard] SET [notice_details] = @notice_details, [date] = @date WHERE [notice_no] = @original_notice_no AND (([notice_details] = @original_notice_details) OR ([notice_details] IS NULL AND @original_notice_details IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_notice_no" Type="Int32" />
                <asp:Parameter Name="original_notice_details" Type="String" />
                <asp:Parameter Name="original_date" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="notice_details" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="notice_details" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="original_notice_no" Type="Int32" />
                <asp:Parameter Name="original_notice_details" Type="String" />
                <asp:Parameter Name="original_date" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
  </form>
</body>
</html>
