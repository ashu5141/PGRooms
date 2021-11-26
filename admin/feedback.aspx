<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pgowner.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="admin_feed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <!-- ########## START: MAIN PANEL ########## -->
    <div class="br-mainpanel">
      <div class="pd-30">
        <h4 class="tx-gray-800 mg-b-5">Feedback</h4>
        <!--<p class="mg-b-0">Do big things with Bracket, the responsive bootstrap 4 admin template.</p>-->
      </div><!-- d-flex -->

      

            <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-b-10">Feedback</h6>
        

          <div class="bd bd-gray-300 rounded table-responsive">
            <asp:ListView ID="lvEmployee" runat="server"
          OnItemDeleting="lvEmployee_ItemDeleting">
            <LayoutTemplate> 
               
                                        <table class="table table-hover" id="Table1" >
                                           <thead>
                    <tr id="Tr1" runat="server"> 
                        
                        <th id="Td1" runat="server"> ID</th>                         
                        <th id="Th1" runat="server"> Email</th> 
                        <th id="Th13" runat="server">Mobile No</th>    
                             <th id="Th2" runat="server">Feed</th>  
                         
                          <th id="Td3" runat="server">Delete</th>             
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
                        <%#Eval("email")%>
                    </td>
                       <td>
                        <%#Eval("mobileno")%>
                    </td>
                     <td>
                        <%#Eval("feed")%>
                    </td>

                    

                     
                    <td>
                        <asp:Button ID="btnDelete" class="ad-st-view" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return deleteConfirm();" style="border:none"/>
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


