<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="image.aspx.cs" Inherits="image" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: small;
    }
    .auto-style2 {
        font-size: small;
        color: #FF9900;
    }
        .auto-style3 {
            font-size: large;
            color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server"> 

       <div class="image">
   	<div class="container">
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 </div>
   	 <div class="col-md-3 wow fadeInRight" data-wow-delay="0.4s">
   	 	
   	 </div>
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container">
             <h1 class="auto-style3"><strong>Add Image</strong></h1>
        <div class="to">
                     
                         <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Plzz Enter PG Name';}" placeholder="PG Name">PG Name</asp:TextBox>
                         
					 	<div class="clearfix">
					 	
					 	    <br />
                            <br />
                             
                            <br />
                            <span class="auto-style2"><strong>SELECT IMAGE<asp:FileUpload ID="FileUpload1" runat="server" />
                            </strong></span>
					 	
					 	</div>
					</div>
					<div class="text">
                        
	                   
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click1"/>
					&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="reset" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>

    </form>
</asp:Content>

