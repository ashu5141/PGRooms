<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="complaint.aspx.cs" Inherits="complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container">
   	  	<h2>Complaints</h2>
   	  	  
					<div class="to">
                                           
					 	  <asp:TextBox ID="TextBox2" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" placeholder="Email">Email</asp:TextBox>
					 	 <asp:TextBox ID="TextBox3" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile No';}" placeholder="Mobile No">Mobile No</asp:TextBox>
					 	 <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}" placeholder="Subject">Subject</asp:TextBox>
                         

					 	<div class="clearfix"></div>
					</div>
					<div class="text">
                        
	                   <textarea placeholder="Message" id="textarea" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message:</textarea>
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>
</asp:Content>

