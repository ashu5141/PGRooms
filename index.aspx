<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 520px;
            height: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="banner">
   	  <div class="container_wrap">
   		<h1>What are you looking for?</h1>
   	       <div class="dropdown-buttons">   
            		  <div class="dropdown-button">           			
            			<select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			<option value="0">Mumbai</option>	
						<option value="1">Bangalore</option>
						<option value="2">Delhi</option>
						<option value="3">Hyderabad</option>
						<option value="4">Pune</option>
						<option value="5">Kolkata</option>
						<option value="8"></option>
					  </select>
					</div>
				    
				   </div>  
		    <form>
				<input type="text" value="Keyword, name, date, ..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Keyword, name, date, ...';}">
			    <div class="contact_btn">
	               <label class="btn1 btn-2 btn-2g"><input name="submit" type="submit" id="submit" value="Search"></label>
	            </div>
			</form>        		
   		    <div class="clearfix"></div>
         </div>
   </div>
   <div class="content_top">
   	  <div class="container">
   		<div class="col-md-4 bottom_nav">
   		   <div class="content_menu">
				<ul>
					<li class="active"><a href="#">Recommended</a></li> 
					<li><a href="#">Latest</a></li> 
					<li><a href="#">Highlights</a></li> 
				</ul>
			</div>
		</div>
		<div class="col-md-4 content_dropdown1">
		   <div class="content_dropdown">    
		       <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
            			<option value="0">Mumbai</option>	
						<option value="1">Bangalore</option>
						<option value="2">Delhi</option>
						<option value="3">Hyderabad</option>
						<option value="4">Pune</option>
						<option value="5"></option>
						<option value="5"></option>
						<option value="5"></option>
		        </select>
		     </div>
		     <div class="content_dropdown">    
		       <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
            			<option value="0">Show Map</option>	
						<option value="1">Pune</option>
						<option value="2">Kolkata</option>
						<option value="3">Hyderabad</option>
						<option value="4">Delhi</option>
						<option value="5"></option>
						<option value="5"></option>
		        </select>
		       </div>
		</div>
		<div class="col-md-4 filter_grid">
			<ul class="filter">
				<li class="fil">Filter :</li>
				<li><a href=""> <i class="icon1"> </i> </a></li>
				<li><a href=""> <i class="icon2"> </i> </a></li>
				<li><a href=""> <i class="icon3"> </i> </a></li>
				<li><a href=""> <i class="icon4"> </i> </a></li>
				<li><a href=""> <i class="icon5"> </i> </a></li>
			</ul>
		</div>
   	</div>
   </div>
   <div class="content_middle">
   	  <div class="container">
   	    <div class="content_middle_box">
          
   	    <div class="middle_grid wow fadeInUp" data-wow-delay="0.4s">
                <asp:Repeater ID="reparNewArrival" runat="server" >
   				  
   			
   			     
                  
                     
                         	<HeaderTemplate>
   				 	<ul class="item_module">
                            </HeaderTemplate>
                           <ItemTemplate>

                               <div class="col-md-6 index-grids">
   			   <div class="grid1">

                               <div class="inner_wrap1">
                               <div class="index_img"><a href="description.aspx?id=<%#Eval("id")%>" class="content_btn"><img src="images/img2.jpg" class="auto-style3" alt=""/></a></div>
                      
   				  <i class="m_home"> </i>
   				 	 	<li class="module_left"><img src="images/m1.jpg" class="img-responsive" alt=""/></li>
   				 	 	<li class="module_right">
   				 	 		<img src="images/m_star.png" class="img-responsive" alt=""/>
   				 	 		<h5 style="font-size: x-large"><%#Eval("pgtitle")%></h5>
   				 	 		<h5 style="font-size: x-large"><%#Eval("rent")%></h5>
   				 	 		
   				 	 	</li>
                               <%--<div class="clearfix"> </div>--%>
                                   </div>


                      </div>
                                   </div>
                               </ItemTemplate>
   				 	 	
                             <FooterTemplate>
                                  </ul>
                             </FooterTemplate>
                           
   				 	
   				 
   			   


                 </asp:Repeater>


   			</div>
   			 
   			<div class="clearfix"> </div>
   		</div>
   		
   	 
   			<div class="clearfix"></div>
   			</div>
   		  </div>
   		  <div class="offering">
   		  	  <h2>What can PG ROOMS offer to you ?</h2>
   		  	  <h3></h3>
   		  	  <ul class="icons wow fadeInUp" data-wow-delay="0.4s">
   		  	  	 <li><i class="icon1"> </i><span class="one"> </span></li>
   		  	  	 <li><i class="icon2"> </i><span class="two"> </span></li>
   		  	  	 <li><i class="icon3"> </i><span class="three"> </span></li>
   		  	  	 <li><i class="icon4"> </i><span class="four"> </span></li>
   		  	  	 <li><i class="icon5"> </i></li>
   		  	  </ul>
   		  	 
   		  	  </div>
   		  </div>
   	 
</asp:Content>

