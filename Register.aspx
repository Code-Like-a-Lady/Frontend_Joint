<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="whole-wrap">
        <div class="container box_1170">

            <div class="section-top-border">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <h3 class="mb-30">User Regististration</h3>

                         <div class="mt-10">
                            <input type="text" name="first_name" placeholder="Username"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" required
                                class="single-input" runat="server" id="Username">
                        </div>
                         <div class="mt-10">
                            <input type="text" name="first_name" placeholder="First Name"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required
                                class="single-input" runat="server" id="Name">
                        </div>
                         <div class="mt-10">
                            <input type="text" name="first_name" placeholder="Surname"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Surnmae'" required
                                class="single-input" runat="server" id="Surname">
                        </div>
                        <div class="mt-10">
                            <input type="email" name="first_name" placeholder="Email"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" required
                                class="single-input" runat="server" id="Email">
                        </div>
                        <div class="mt-10">
                            <input type="Password" name="last_name" placeholder="Password"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required
                                class="single-input" runat="server" id="Password">
                        </div>
                         <div class="mt-10">
                            <input type="Password" name="last_name" placeholder="Confirm Password"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required
                                class="single-input" runat="server" id="ConfirmPass">
                        </div>
                        <div class="mt-10">
                            <asp:Button ID="btn_register" runat="server" Text="Complete Registration" class="genric-btn primary-border" OnClick="Register_Click" />
                        </div>
                        <div class="mt-10">
                            <asp:Label ID="error" runat="server" Text="" visible="false" ></asp:Label>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
