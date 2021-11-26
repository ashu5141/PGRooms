<%@ Page Title="" Language="C#" MasterPageFile="~/pgowner/pgowner2.master" AutoEventWireup="true" CodeFile="addPg2.aspx.cs" Inherits="pgowner_addPg2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <!-- ########## START: MAIN PANEL ########## -->
    <div class="br-mainpanel">
      <div class="br-pageheader pd-y-15 pd-l-20">
        <nav class="breadcrumb pd-0 mg-0 tx-12">
          <a class="breadcrumb-item" href="index.aspx">Bracket</a>
          <a class="breadcrumb-item" href="#">Forms</a>
          <span class="breadcrumb-item active">Form Layouts</span>
        </nav>
      </div><!-- br-pageheader -->
      <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
        <h4 class="tx-gray-800 mg-b-5">Add PG Details</h4>
        
      </div>

      <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="tx-gray-800 tx-uppercase tx-bold tx- mg-b-10">PG Details</h6>

          <div class="form-layout form-layout-1">  
            <div class="row mg-b-22">
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">State: <span class="tx-danger">*</span></label>
               
                <asp:TextBox ID="TextBox1" class="form-control"  runat="server" placeholder="State"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">City: <span class="tx-danger">*</span></label>
                  
                   <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="City"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Room Type: <span class="tx-danger">*</span></label>
                  
                   <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Room Type"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">No. of Beds: <span class="tx-danger">*</span></label>
                  
                   <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder="No. of Beds"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Rent: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder="Rent"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                 <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Address: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox6" class="form-control" runat="server" placeholder="Address"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                 <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Email ID: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox7" class="form-control" runat="server" placeholder="Email ID"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                 <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Contact Owner: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder="Contact Owner"></asp:TextBox>
                </div>     
              </div><!-- col-4 -->
                 </div><!-- row -->
              </div><!-- form-layout -->
               
              <br /><br />
          <h6 class="tx-gray-800 tx-uppercase tx-bold tx- mg-b-10">Facilities</h6>
              
               <div class="form-layout form-layout-1">  
                <div class="row mg-b-22">

                <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                    
                  <label class="form-control-label">Power Backup: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox10" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Parking: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox11" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Air Conditioner: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox12" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Balcony: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox13" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Laundry: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox14" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Wifi: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox15" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                 <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">TV: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox16" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                 <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Security(CCTV): <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox18" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
                 <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Food Available: <span class="tx-danger">*</span></label>

                 <asp:TextBox ID="TextBox17" class="form-control" runat="server" placeholder="Yes/No"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
            </div><!-- row -->

           
          </div><!-- form-layout -->
            <br />
             <div class="form-layout-footer">
                  <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Submit"  OnClick="Button1_Click"/>
                <asp:Button ID="Button2" class="btn btn-secondary" runat="server" Text="Cancel" />
            </div><!-- form-layout-footer -->
         

         
</asp:Content>
