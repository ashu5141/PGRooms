<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #993300;
            font-size: x-large;
        }
        
        .auto-style2 {
            color: #FF9900;
            font-size: large;
        }
        .auto-style3 {
            color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    

       <div class="signup">
   	<div class="container">
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 	

   	 <h1 class="auto-style1">Registration</h1>
   	 	

   	 </div>
   	 <div class="col-md-3 wow fadeInRight" data-wow-delay="0.4s">
   	 	
   	 </div>
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container">
   	  	<h2>Choose Your Account Type:
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
         <asp:ListItem>PG Owner</asp:ListItem>
         <asp:ListItem>Customer</asp:ListItem>
         </asp:DropDownList>

   	  	</h2>
   	  	  
					<div class="to">
                     
                         <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}" placeholder="First Name">First Name</asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}" placeholder="Last Name">Last Name</asp:TextBox>
					 	  <asp:TextBox ID="TextBox3" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" placeholder="Email">Email</asp:TextBox>
                        
                        <span class="auto-style2"><strong> GENDER </strong></span> &nbsp;&nbsp;&nbsp;    <asp:RadioButton ID="RadioMale" Text=" Male " runat="server" GroupName="gender"/>&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioFemale" Text=" Female " runat="server" GroupName="gender"/>

                        <br />
					 	 <asp:TextBox ID="TextBox5" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}" placeholder="Room no,Apt,Area,City,State">Address</asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" placeholder="Phone">Phone</asp:TextBox>
                        <asp:TextBox ID="TextBox7" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" placeholder="Password">Password</asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Invalid Confirm Paasword" ForeColor="Red"></asp:CompareValidator>
                        <asp:TextBox ID="TextBox8" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password;}" placeholder="Confirm Password">Confirm Password</asp:TextBox>
					 	<div class="clearfix">
					 	
					 	</div>
					</div>
					<div class="text">
                        
	                   
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" CssClass="auto-style3"/>
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [sign]"></asp:SqlDataSource>
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>
 
</asp:Content>

