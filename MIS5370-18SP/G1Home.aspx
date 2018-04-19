<%@ Page Title="HR Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="G1Home.aspx.cs" Inherits="MIS5370_18SP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <div class="row">
        <div class="col-md-4">
            <h2>Employee</h2>
            <p>Manage Employees</p>
            <p>
                <a class="btn btn-default" href="G1Employee.aspx">Go &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Timesheet</h2>
            <p>Manage Timesheets</p>
            <p>
                <a class="btn btn-default" href="G1Timesheet.aspx">Go &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
