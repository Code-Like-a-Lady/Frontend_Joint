﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    

    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Checkout<span>.</span></h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Cart Total Page Begin -->
    <section class="cart-total-page spad">
        <div class="container">
            <form action="#" class="checkout-form">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>Your Information</h3>
                    </div>
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Name*</p>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" placeholder="Company Name ">
                            </div>
                            <div class="col-lg-5">
                                <input type="text" placeholder="Company Code">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Street Address*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text">
                                <input type="text">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Country*</p>
                            </div>
                            <div class="col-lg-10">
                                <select class="cart-select country-sa">
                                    <option>SA</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">City*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Country</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Post Code/ZIP*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Phone*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-right">
                                <div class="diff-addr">
                                    <input type="radio" id="one">
                                    <label for="one">Ship to different address</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="order-table">
                            <div class="cart-item">
                                <span>Product</span>
                                <p class="product-name">Kids Masks</p>
                            </div>
                            <div class="cart-item">
                                <span>Price</span>
                                <p>R0</p>
                            </div>
                            <div class="cart-item">
                                <span>Quantity</span>
                                <p>1</p>
                            </div>
                            <div class="cart-item">
                                <span>Shipping</span>
                                <p>R0</p>
                            </div>

                            <div class="cart-total">
                                <span>Total</span>
                                <p>R0</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="payment-method">
                            <h3>Payment</h3>
                            <ul>
                                <li>Paypal <img src="img/paypal.jpg" alt=""></li>
                                <li>Credit / Debit card <img src="img/mastercard.jpg" alt=""></li>
                                <li>
                                    <label for="two">Pay when you get the package</label>
                                    <input type="radio" id="two">
                                </li>
                            </ul>
                            <button type="submit">Place your order</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Cart Total Page End -->

</asp:Content>
