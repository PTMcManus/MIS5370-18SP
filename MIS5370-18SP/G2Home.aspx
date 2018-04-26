<%@ Page Title="Inventory Managment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="G2Home.aspx" Inherits="MIS5370_18SP" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Inventory</h1>
        <p class="lead">An itemized catalog of medical equipent and supplies that support the daily functions of the Virginia Hospital.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <h2>Vendor</h2>
            <p>
                Companies selling medical supplies and equipment for the betterent of the hosiptal.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Vendor data here...</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Accounts Payable</h2>
            <p>
                Accounts that owe to suppliers as distinguished accrued interest, salaries, and taxes.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Accounts Payable data here...</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Shipment Line</h2>
            <p>
                An identification label used to specify the content of the shipping container.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Shipment Line data here...</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Invoice</h2>
            <p>
                It identifies both the trading parties and lists to quantify the items sold. With pricing, date, and method with payment terms.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Invoice data here...</a>
            </p>
        </div>
    </div>
        <div class="row">
        <div class="col-md-3">
            <h2>Order Line</h2>
            <p>
                The quanity of what is ordered is stored here to catalog the supplies which have been bought.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Order Line data here...</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Order</h2>
            <p>
                The identification tag for the order created which would be broken into areas of price, date, and product.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Order data here...</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Shipment</h2>
            <p>
                The shipment will catalog the information regarding the supplies to be sent.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Shipment data here...</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Inventory</h2>
            <p>
                Items will be stored and numbered for the status and quantity of each product.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Inventory data here...</a>
            </p>
        </div>
    </div>
        <div class="row">
        <div class="col-md-6">
            <h2>Supplies</h2>
            <p>
                The supplies will be categorized and stored with the name, type, and identification label.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Supplies data here...</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Treatment</h2>
            <p>
                Treatment will encompass what was used on what date, what type of medication, and patient used on.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Enter Treatment data here...</a>
            </p>
        </div>
    </div>
</div>

</asp:Content>

