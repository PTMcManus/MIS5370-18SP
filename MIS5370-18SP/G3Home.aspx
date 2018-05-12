<%@ Page Title="G3Communication Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="G3Home.aspx.cs" Inherits="MIS5370_18SP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <div class="row">
        <div class="col-md-4">
            <h2>Communication</h2>
            <p>The way to communicate with customers</p>
            <p>
                <a class="btn btn-default" href="G3Communication.aspx">Go &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Communication Type</h2>
            <p>The type of Communication</p>
            <p>
                <a class="btn btn-default" href="G3CommunicationType.aspx">Go &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
