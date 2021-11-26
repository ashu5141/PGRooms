<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: left;
        }
        .auto-style3 {
            color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

       <div class="pgdetails">
   	<div class="container">
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 </div>
   	 
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">
   	  <div class="container">
   	  	  
					<div class="to">
                     <h1 class="auto-style1"><strong>Customer Details</strong></h1>
                        <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" placeholder="Name">Name</asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}" placeholder="Address">Address</asp:TextBox>
					 	<asp:TextBox ID="TextBox3" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" placeholder="City">City</asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile';}" placeholder="Mobile">Mobile</asp:TextBox>
                       
                        <br />
                       <br />
                        <h1 class="auto-style2">&nbsp;</h1>
                        
                        <h1 class="auto-style2"><strong>Booking Details</strong></h1>
                        <p class="auto-style2">&nbsp;</p>      
                           
                        <asp:TextBox ID="TextBox5" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Rent';}" placeholder="Rent">Rent</asp:TextBox>         
                        <asp:TextBox ID="TextBox6" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Card/Netbanking/UPI';}" placeholder="Payment Mode">Payment Mode</asp:TextBox>
                        <asp:TextBox ID="TextBox7" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" placeholder="Email">Email</asp:TextBox>
                        <span class="auto-style3"><strong>Agreement</strong></span> 
                        <asp:TextBox ID="TextBox8" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Start date';}" placeholder="Start date" TextMode="DateTime" Width="89px"></asp:TextBox>
                        <asp:TextBox ID="TextBox9" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Expiry date';}" placeholder="Expiry date" TextMode="DateTime" Width="94px"></asp:TextBox>
                        <div class="clearfix">
					 	
					 	</div>
					</div>
					<div class="text">
                        
	                   
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1"/>
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>

    
    
</asp:Content>

