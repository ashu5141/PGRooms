<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pgdetails.aspx.cs" Inherits="pgdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
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
                     <h1 class="auto-style3"><strong>PG Details</strong></h1>
                        <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State';}" placeholder="State">State</asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" placeholder="City">City</asp:TextBox>
					 	<asp:TextBox ID="TextBox3" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type';}" placeholder="Boys/Girls">Type</asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'No. of Rooms/Beds';}" placeholder="No. of Rooms">No. of Rooms/Beds</asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Rent';}" placeholder="Price of Room">Rent</asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}" placeholder="Address">Address</asp:TextBox>
                        <asp:TextBox ID="TextBox7" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email ID';}" placeholder="Email ID">Email ID</asp:TextBox>
                        
                        <asp:TextBox ID="TextBox9" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Contact Person';}" placeholder="Contact Owner">Contact Owner</asp:TextBox><br />
                        <br />
                        <br />
                        
                           <h3> <strong> 
                        <asp:Label ID="Label1" runat="server" Text="Facilities" CssClass="auto-style2"></asp:Label>
                        </strong></h3>
                           
                        <asp:TextBox ID="TextBox10" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Electricity';}" placeholder="Yes/No">Power Backup</asp:TextBox>
                        <asp:TextBox ID="TextBox11" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Parking';}" placeholder="Yes/No">Parking</asp:TextBox>
                        <asp:TextBox ID="TextBox12" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Fully Furnished';}" placeholder="Yes/No">Fully Furnished</asp:TextBox>
                        <asp:TextBox ID="TextBox13" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Refrigerator';}" placeholder="Yes/No">Refrigerator</asp:TextBox>
                        <asp:TextBox ID="TextBox14" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'AC';}" placeholder="Yes/No">AC</asp:TextBox>
                        <asp:TextBox ID="TextBox15" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Balcony';}" placeholder="Yes/No">Balcony</asp:TextBox>
                        <asp:TextBox ID="TextBox16" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Laundry';}" placeholder="Yes/No">Laundry</asp:TextBox>
                        <asp:TextBox ID="TextBox17" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Wifi';}" placeholder="Yes/No">Wifi</asp:TextBox>
                        <asp:TextBox ID="TextBox18" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'TV';}" placeholder="Yes/No">TV</asp:TextBox>
                        <asp:TextBox ID="TextBox19" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Security';}" placeholder="Yes/No">Security</asp:TextBox>
                        <asp:TextBox ID="TextBox20" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Meals offered with PG';}" placeholder="Breakfast/lunch/dinner">Meals offered with PG</asp:TextBox>
                        <div class="clearfix">
					 	
					 	</div>
					</div>
					<div class="text">
                        
	                   
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Add PG" OnClick="Button1_Click1"/>
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>

  
</asp:Content>

