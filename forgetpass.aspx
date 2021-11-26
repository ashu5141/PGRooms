<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpass.aspx.cs" Inherits="forgetpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

       <div class="Forget Password">
   	<div class="container">
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 </div>
   	 
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">
   	  <div class="container">
   	  	  
					<div class="to">
                     <h1 class="auto-style1"><strong>Forget Password</strong></h1>
                        
                      <center>  <asp:TextBox ID="TextBox7" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" placeholder="Email ID">Enter Your Email ID</asp:TextBox> </center>
                      
					 	</div>
					</div>
					<div class="auto-style2">
                        
	                   
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>

    
    
</asp:Content>
