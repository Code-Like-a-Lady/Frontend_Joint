<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="RemoveProduct.aspx.cs" Inherits="Group_MaskInc_FrontEnd.RemoveProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="whole-wrap">
        <div class="container box_1170">

            <div class="section-top-border">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <h3 class="mb-30">Add Product</h3>

                        <div class="mt-10">
                            <input type="number" name="Product_ID" placeholder="Product ID" min="1" 
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product ID'" required
                                class="single-input" runat="server" id="ProID">
                        </div>

                         <div class="mt-10">
                            <input type="text" name="Product_Name" placeholder="Product name"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product name'" required
                                class="single-input" runat="server" id="ProName">
                        </div>
                         <div class="mt-10">
                            <input type="text" name="Product_Description" placeholder="Product Description"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product Description'" required
                                class="single-input" runat="server" id="ProDescription">
                        </div>
                         <div class="mt-10">
                            <input type="number" name="Product_Price" placeholder="Product Price" step="0.01"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product Price'" required
                                class="single-input" runat="server" id="ProPrice">
                        </div>
                        <div class="mt-10">
                            <input type="number" name="Product_Active" placeholder="Active" min="0" max="1"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Active'" required
                                class="single-input" runat="server" id="ProActive">
                        </div>

                         <div class="mt-10">
                            <input type="number" name="Product_MaskID" placeholder="MaskID" min="1" 
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'MaskID'" required
                                class="single-input" runat="server" id="ProMaskID">
                        </div>

                        <div class="mt-10">
                            <input type="number" name="Product_Admin" placeholder="Admin" min="1" 
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Admin'" required
                                class="single-input" runat="server" id="Admin">
                        </div>

                        <div class="mt-10">
                            <input type="number" name="Product_Quantity" placeholder="Quantity" min="1" 
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Quantity'" required
                                class="single-input" runat="server" id="ProQuantity">
                        </div>

                        <div class="mt-10">
                            <asp:Button ID="btn_Confirm" runat="server" Text="Confirm" class="genric-btn primary-border" OnClick="Confirm_Click" />
                        </div>
                        <div class="mt-10">
                            <asp:Label ID="error" runat="server" Text="" visible="false" ></asp:Label>
                        </div>

                         <div class="mt-10">
                            <asp:Button ID="btn_RemoveProduct" runat="server" Text="Remove Product" class="genric-btn primary-border" OnClick="RemoveProduct_Click" />
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
