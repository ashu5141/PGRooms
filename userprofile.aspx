<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

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
            color: #FF9900;
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

      
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/pngfind.com-user-icon-png-938537.png" />
                        </center>
                         
                     </div>
                  </div>
        <div class="row">
                     <div class="col">
                        <center>
                            Hello:  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                          <br />
                          

                        </center>
                     </div>
                  </div>

   	  <div class="container">
   	  		
					<div class="to">
                     
                           <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" ReadOnly="False">First Name</asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" ReadOnly="False">Last Name</asp:TextBox> 
                         
					 	  <asp:TextBox ID="TextBox3" runat="server" placeholder="Email" >Email</asp:TextBox>
                        
                         
                       
					 	 <asp:TextBox ID="TextBox4" runat="server" placeholder="Room no,Apt,Area,City,State">Address</asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Phone">Phone</asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Password" ReadOnly="true">Password</asp:TextBox>
                      <%--   <asp:TextBox ID="TextBox1" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox> --%>
                        
                         

                       <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Invalid Confirm Paasword" ForeColor="Red"></asp:CompareValidator>--%>
                        <%--<asp:TextBox ID="TextBox8" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password;}" placeholder="Confirm Password">Confirm Password</asp:TextBox>--%>
					 	<div class="clearfix">
					 	
					 	</div>
					</div>
					<div class="text">
                        
	                   
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Update"  CssClass="auto-style3" OnClick="Button1_Click"/>
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [sign]"></asp:SqlDataSource>
					</div>
             <a href="index.aspx"><< Back to Home</a><br><br>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>
</asp:Content>

