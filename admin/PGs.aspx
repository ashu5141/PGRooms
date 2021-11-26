<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pgowner.master" AutoEventWireup="true" CodeFile="PGs.aspx.cs" Inherits="admin_PGs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- ########## START: MAIN PANEL ########## -->
    <div class="br-mainpanel">
      <div class="pd-30">
        <h4 class="tx-gray-800 mg-b-5">PG</h4>
        <!--<p class="mg-b-0">Do big things with Bracket, the responsive bootstrap 4 admin template.</p>-->
      </div><!-- d-flex -->

      

            <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-b-10">PG</h6>
        

          <div class="bd bd-gray-300 rounded table-responsive">
            <asp:ListView ID="lvEmployee" runat="server">
      <%--    OnItemDeleting="lvEmployee_ItemDeleting">--%>
            <LayoutTemplate> 
               
                                        <table class="table table-hover" id="Table1" >
                                           <thead>
                    <tr id="Tr1" runat="server"> 
                        
                        <th id="Td1" runat="server"> ID</th>                  
                        <th id="Th1" runat="server"> Pg Title</th> 
                        <th id="Th13" runat="server">Email ID</th>    
                        <th id="Th3" runat="server">Contact Owner</th>  
                       
                         
                          <th id="Td3" runat="server">Edit</th>             
                    </tr> 
                         </thead>  
                                             <tbody>
                    <tr id="itemplaceholder" runat="server">
                    </tr>
                   
                        </tbody>
                                        </table>

                                         </LayoutTemplate> 

            <ItemTemplate> 

                <tr class="TableData"> 

                    <td>
                        <%# Container.DataItemIndex + 1%>
                        <asp:HiddenField ID="hfEmployeeID" runat="server" Value='<%#Eval("id") %>' />
                    </td>
                    
                     <td>
                        <%#Eval("pgtitle")%>
                    </td>
                       <td>
                        <%#Eval("emailid")%>
                    </td>
                     <td>
                        <%#Eval("contactowner")%>
                    </td>
                     

                    

                     
                    <td>
                     <%--    <asp:Button ID="btnEdit" class="ad-st-view" runat="server" Text="Edit" OnClick="btnEdit_Click1" style="border:none"/> --%>
                   
                        <div>
                    <a href="bookingdetails.aspx?id=<%#Eval("id")%>"> <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" style="border:none"  /> </a>
                </div>
                         </td>

                   
                </tr>                 

            </ItemTemplate> 
                
                                              </asp:ListView>
          </div><!-- bd -->

        

         

        </div><!-- br-section-wrapper -->
      </div><!-- br-pagebody -->
      <footer class="br-footer">
        <div class="footer-left">
          
        </div>
        <div class="footer-right d-flex align-items-center">
          
        </div>
      </footer>
    </div><!-- br-mainpanel -->
    <!-- ########## END: MAIN PANEL ########## -->
</asp:Content>

