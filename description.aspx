<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="description.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            max-width: 100%;
            height: 327px;
            width: 638px;
        }
        .auto-style2 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="single">
			<div class="container">
			<div class="col-md-8 sing">
				<div class=" single-grid">
					<img class="auto-style1" src="images/img13.jpg" alt=""  class="img-responsive">
					<div class="lone-line">
						<h2>Gharaana Reality PG </h2>
						<div class="cal">
							
						</div>


				<div class="grid-categories">
					<h4>Details</h4>
					<ul class="popular ">
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>State:  <asp:Label ID="state" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>City:  <asp:Label ID="city" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Room Type:  <asp:Label ID="roomtype" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>No. of Beds:  <asp:Label ID="noofbeds" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Rent:   <asp:Label ID="rent" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Address: <asp:Label ID="address" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Email ID:  <asp:Label ID="emailid" runat="server" Text="Label"></asp:Label></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Contact Owner:  <asp:Label ID="contactowner" runat="server" Text="Label"></asp:Label></a></li>
					</ul>
				</div>
				<div class="grid-categories">
					<h4>Facilities</h4>
					<ul class="popular popular-in">
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Power Backup: <asp:Label ID="powerbackup" runat="server" Text="Label"></asp:Label></a></li></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Parking: <asp:Label ID="parking" runat="server" Text="Label"></asp:Label></a></li></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Air Conditioner: <asp:Label ID="airconditioner" runat="server" Text="Label"></asp:Label></a></li></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Balcony: <asp:Label ID="balcony" runat="server" Text="Label"></asp:Label></a></li></a></li>
						<li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Laundry: <asp:Label ID="laundry" runat="server" Text="Label"></asp:Label></a></li></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Wifi: <asp:Label ID="wifi" runat="server" Text="Label"></asp:Label></a></li></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-ok"> </i>TV: <asp:Label ID="tv" runat="server" Text="Label"></asp:Label></a></li></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Security(CCTV): <asp:Label ID="security" runat="server" Text="Label"></asp:Label></a></li></a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-ok"> </i>Food Avalaible: <asp:Label ID="foodavailable" runat="server" Text="Label"></asp:Label></a></li></a></li>
					</ul>
				</div>   
					</div>
				</div>


                <div class="text-center">
                    <a href="booking.aspx"> <asp:Button ID="Button1" runat="server" Text="Book" OnClick="Button1_Click" BackColor="#FF9900" ForeColor="White" Height="45px" Width="111px" /> </a>
                </div>

                <br />
					<div class=" single-profile">
				<h4> Related Posts</h4>
				<div class="single-left ">					
					<div class="col-md-3 post-top">
					<img class="auto-style2" src="images/img3.jpg" alt="">
						
					</div>
					<div class="col-md-3 post-top">
					<img class="img-responsive " src="images/s2.jpg" alt="">
						
					</div>
					<div class="col-md-3 post-top">
					<img class="img-responsive " src="images/s3.jpg" alt="">
						
					</div>
					<div class="col-md-3 post-top">
					<img class="img-responsive " src="images/s4.jpg" alt="">
						
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
	<%--		<div class="single-bottom">
		
			<h3>Leave a Comment</h3>
				<form>
						<div class="col-md-6 comment">
							<input type="text" placeholder="Name">
						</div>
						<div class="col-md-6 comment">
							<input type="text" placeholder="email">
						</div>
						<div class="clearfix"> </div>
							<textarea placeholder="Message" required=""> </textarea>	
							<input type="submit" value="Send">					
				</form>
		  </div>--%>
				</div>
					<div class="col-md-3 categories-grid">
			</div>
				<div class="clearfix"> </div>
			
			</div>
	</div>
</asp:Content>

