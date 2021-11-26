<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container">
   	  	<h2>Feedback</h2>
   	  	  
					<div class="to">
                                           
					 	  <asp:TextBox ID="TextBox2" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" placeholder="Email">Email</asp:TextBox>
					 	 <asp:TextBox ID="TextBox3" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile No';}" placeholder="Mobile No">Mobile No</asp:TextBox>
					 	 
                         

					 	<div class="clearfix"></div>
					</div>
					<div class="text">
                        
	                   <textarea placeholder="Feed" id="textarea" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Feed';}">Feedback:</textarea>
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>
</asp:Content>

