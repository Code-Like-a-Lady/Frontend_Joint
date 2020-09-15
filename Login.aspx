<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="whole-wrap">
        <div class="container box_1170">

            <div class="section-top-border">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <h3 class="mb-30">Login</h3>

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
                            <asp:Button ID="login" runat="server" Text="Login" class="genric-btn primary-border" OnClick="login_Click" />
                            <a href="Register.aspx" class="genric-btn info-border">Register</a>
                        </div>
                        <div class="mt-10">
                            <asp:Label ID="error" runat="server" Text="Incorrect Password or Username" visible="false" ></asp:Label>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
