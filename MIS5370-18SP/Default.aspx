<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MIS5370_18SP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>MIS5370 Spring 2018 Class Database Application</h1>
        <p class="lead">This application is developed by the students of MIS5370 Database Design and Implementation class of Spring 2018 at the Texas A&amp;M International University.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Human Resources</h2>
            <p>
                Human resource management and related functions.</p>
            <p>
                <a class="btn btn-default" href="G1Home">Go to HR Homepage &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Inventory Management</h2>
            <p>
                Managing medical supplies and equipment.</p>
            <p>
                <a class="btn btn-default" href="G2Home">Go to Inventory Homepage &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Patient Interaction</h2>
            <p>
                Communication with patients.</p>
            <p>
                <a class="btn btn-default" href="G3Home">Go to Communication Homepage &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Marketing</h2>
            <p>
                Managing leads and surveys.</p>
            <p>
                <a class="btn btn-default" href="G4Home">Go to Marketing Homepage &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Operations</h2>
            <p>
                Day-to-day operations of the clinic.</p>
            <p>
                <a class="btn btn-default" href="G5Home">Go to Operations Homepage &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
