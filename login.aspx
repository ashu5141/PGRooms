<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #993300;
        }
        .auto-style2 {
            width: 437px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
						                <div class="text-left">
						                <fieldset id="body">
						                	<fieldset>
                                                <asp:Label ID="Label1" runat="server" Text="Email Address">Email Address</asp:Label>
						                          <asp:TextBox ID="email" runat="server" placeholder="Type your email"></asp:TextBox>
						                    </fieldset> 
						                    <fieldset>
                                                <asp:Label ID="Label2" runat="server" Text="Password">Password</asp:Label>
						                             <asp:TextBox ID="password" runat="server" placeholder="Type your password" ></asp:TextBox>
						                     </fieldset>
                                            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" BackColor="#990000" CssClass="auto-style1" Width="70px" />
                                            <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" OnCheckedChanged="CheckBox1_CheckedChanged" TextAlign="Left" />--%>
						            	</fieldset>
						                 <span><a href="#">Forgot your password?</a><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [log_in]"></asp:SqlDataSource>
                                            </span>
							                <br />
&nbsp;</div>
							  
</asp:Content>

