<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="receipt.aspx.cs" Inherits="receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <style type="text/css">
        .auto-style2 {
            color: #993300;
        }
        .auto-style3 {
            font-size: larger;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            color: #993300;
            font-size: larger;
        }
    .auto-style6 {
        color: #FFFFCC;
        background-color: #FF9900;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="pgdetails">
   	<div class="container" align="center">

   	 <div class="col-md-9 wow fadeInmiddle" data-wow-delay="0.4s">
            
   	 </div>
   	 
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">
   	  <div class="container">
   	  	   
					<div class="to">
                    
                        <h1 class="auto-style4"><strong>Receipt</strong></h1>
                         <div>
              <span> <span class="auto-style2"><strong><span class="auto-style3">Transaction ID</span></strong></span><strong><span class="auto-style3"> :</span></strong> <strong>  <asp:Label ID="Label1" runat="server" Text="Label" BorderColor="#333333"></asp:Label></strong></span><br />
               <span> <span class="auto-style2"><strong><span class="auto-style3">Transaction Date</span></strong></span><strong><span class="auto-style3"> :</span></strong> <strong>  <asp:Label ID="CurrentTime" runat="server" Text="Label"></asp:Label></strong></span><br />
               <span> <span class="auto-style5"><strong>PG Title</strong></span><strong><span class="auto-style3"> :</span></strong> <strong>  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></strong></span><br />
               <span> <span class="auto-style5"><strong>Rent </strong></span><strong><span class="auto-style3">:</span></strong> <strong>  <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></strong></span><br />
              
              
   
   
    
	
</div> 
                        
                        </div>
            
   	  </div>
       <a href="index.aspx"><< Back to Home</a><br><br>
   </div></div>
                        

   

</asp:Content>

