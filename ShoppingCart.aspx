<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="cart-page">
        <div class="container">
            <div class="cart-table">
                <table>
                    <thead>
                        <tr>
                            <th class="product-h">Product</th>
                            <th>Price</th>
                            <th class="quan">Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="product-col">
                                <img src="img/product/images (18).jpg" alt="">
                                <div class="p-title">
                                    <h5>Kids Mask</h5>
                                </div>
                            </td>
                            <td class="price-col">R0</td>
                            <td class="quantity-col">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </td>
                            <td class="total">R0</td>
                            <td class="product-close">x</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="cart-btn">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="coupon-input">
                            <input type="text" placeholder="Enter Coupon code">
                        </div>
                    </div>
                    <div class="col-lg-5 offset-lg-1 text-left text-lg-right">
                        <div class="site-btn clear-btn">Clear Cart</div>
                        <a href="Home.aspx"class="site-btn update-btn">Add to Cart</a>
                       
                    </div>
                </div>
            </div>
        </div>
        <div class="shopping-method">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shipping-info">
                            <h5>Choose a shipping</h5>
                            <div class="choose-shipping">
                                <div class="cs-item">
                                    <input type="radio" name="cs" id="one">
                                    <label for="one" class="active">
                                       Express
                                        <span>3 to 5 business days</span>
                                    </label>
                                </div>

                                <div class="cs-item">
                                    <input type="radio" name="cs" id="two">
                                    <label for="two">
                                        RAM
                                        <span>7 to 10 business days</span>
                                    </label>
                                </div>

                                <div class="cs-item">
                                    <input type="radio" name="cs" id="three">
                                    <label for="three">
                                        Weekend Galore
                                        <span>Closest weekend delivery </span>
                                    </label>
                                </div>

                                 <div class="cs-item">
                                    <input type="radio" name="cs" id="four">
                                    <label for="four">
                                       The courier company 
                                        <span>30 business days</span>
                                    </label>
                                </div>

                        <div class="cs-item last">
                                    <input type="radio" name="cs" id="five">
                                    <label for="five">
                                       Speedy Delivery 
                                        <span>1 to 3 business days  </span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="total-info">
                            <div class="total-table" >
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Total</th>
                                            <th>Tax</th>
                                            <th>Shipping</th>
                                            <th class="total-cart">Total Cart</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="total">R0</td>
                                            <td class="tax">R0</td>
                                            <td class="shipping">R0</td>
                                            <td class="total-cart-p">R0</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 text-right">
                                    <a href="CheckOut.aspx" class="primary-btn chechout-btn">Proceed to Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart Page Section End -->
</asp:Content>
