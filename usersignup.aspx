<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usersignup.aspx.cs" Inherits="usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                
        .auto-style2 {
            color: #FF9900;
            font-size: large;
        }
        .auto-style3 {
            color: #FF9900;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="signup">
   	<div class="container">
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 </div>
   	 <div class="col-md-3 wow fadeInRight" data-wow-delay="0.4s">
   	 	
   	 </div>
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container">
   	  		<h2>Signup</h2>
					<div class="to">
                     
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name"></asp:TextBox>
					 	  <asp:TextBox ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>
                        
                         <strong> 
                        
                        <span class="auto-style4">GENDER</span><span class="auto-style2"> </span> </strong>&nbsp;&nbsp;&nbsp;    <asp:RadioButton ID="RadioMale" Text=" Male " runat="server" GroupName="gender"/>&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioFemale" Text=" Female " runat="server" GroupName="gender"/>

                        <br />
					 	 <asp:TextBox ID="TextBox5" runat="server" placeholder="Room no,Apt,Area,City,State"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Phone"></asp:TextBox>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Invalid Confirm Paasword" ForeColor="Red"></asp:CompareValidator>
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Confirm Password"></asp:TextBox>
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

