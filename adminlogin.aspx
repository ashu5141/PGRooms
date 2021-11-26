<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="User Login">
   	<div class="container">
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 
   	 </div>
   	 <div class="col-md-3 wow fadeInRight" data-wow-delay="0.4s">
   	 	
   	 </div>
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container" align="center">
					
                               
						        <div id="loginForm">
						                <fieldset id="body">
						                	<fieldset>   
                                                    <asp:Label ID="Label1" runat="server" Text="Email Address" ForeColor="#993300" align="left"> </asp:Label>
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
						                    </fieldset>
						                    <fieldset>
						                           <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="#993300" align="left"></asp:Label>
						                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
						                     </fieldset>
						                  <%--  <input type="submit" id="login" value="Login">--%>
                                         <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" BackColor="#FF9900" ForeColor="White"/>
						                	<%--<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>--%>
						            	</fieldset>
						                 <%-- <span ><a href="forgetpass.aspx">Forget your password?</a></span> <br />
                                    <span><a href="usersignup.aspx">New User ? Signup</a></span> --%>
							      </div>
                         
         
   		  
  

           </div>
    </div>
    </div>
</asp:Content>

