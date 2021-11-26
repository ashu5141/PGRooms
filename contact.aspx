<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #993300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
       <div class="contact">
   	<div class="container">
   	 <h1 class="auto-style1">Contact Us</h1>
   	 <div class="col-md-9 wow fadeInLeft" data-wow-delay="0.4s">
   	 	<div class="map">
		   <iframe src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Nallasopara%20East%20Mumbai%20Maharastra+(PG%20ROOMS)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
		</div>
   	 </div>
   	 <div class="col-md-3 wow fadeInRight" data-wow-delay="0.4s">
   	 	<address class="address">
              <p>A/07 Datta kripa apt. Shirdi nagar Nallasopara East</p>
              <dl>
                 <dt></dt>
                 <dd>Freephone:<span> +1 800 254 2478</span></dd>
                 <dd>Telephone:<span> +1 800 547 5478</span></dd>
                 <dd>E-mail:&nbsp; <a href="mailto:pginfo@gmail.com">pginfo@gmail.com</a></dd>
              </dl>
           </address>
   	 </div>
   </div>
   <div class="living_middle wow fadeInUp" data-wow-delay="0.4s">


   	  <div class="container">
   	  	<h2>Feedback</h2>
   	  	  
					<div class="to">
                     
                        <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" placeholder="Name">Name</asp:TextBox>
					 	  <asp:TextBox ID="TextBox2" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" placeholder="Email">Email</asp:TextBox>
					 	 <asp:TextBox ID="TextBox3" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" placeholder="Mobile no">Mobile no</asp:TextBox>
					 	
					 	<div class="clearfix"></div>
					</div>
					<div class="text">
                        
	                   <textarea placeholder="Message" id="textarea" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message:</textarea>
	                </div>
	                <div class="form-submit1">
			           

			         <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/>
					</div>
					<div class="clearfix"></div>
         
   	  </div>	  
   </div>

           </div>

  
</asp:Content>

