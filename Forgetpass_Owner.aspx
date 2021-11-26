<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetpass_Owner.aspx.cs" Inherits="Forgetpass_Owner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: x-large;
    }
        .auto-style3 {
        font-size: x-large;
        width: 21%;
        height: 31px;
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
                     <h1 class="auto-style3"><strong>Forget Password</strong></h1>
                        
                          <asp:TextBox ID="emailid" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" placeholder="Email ID">Enter Your Registered Email ID</asp:TextBox> 
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
					 	<br />
                        <br />
                        <br />
                      
					 	</div>
             </div>
            <div class="form-submit1">
             <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" BackColor="#FF9900" ForeColor="White" Height="56px" Width="120px" CssClass="col-xs-offset-0" />
               <br />
                 <a href="index.aspx"><< Back to login</a>
                 </div>	
            
			<div class="clearfix"></div>
        
   	  </div>
           
       </div>
	 </div> 

</asp:Content>

