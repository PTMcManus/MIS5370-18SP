<%@ Page Title="G3Communication" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="G3Communication.aspx.cs" Inherits="MIS5370_18SP.G3Communication" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Here are the details of Patients whom we communicated:</h3>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Communication]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="Comm_ID">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Comm_ID" HeaderText="Comm ID" SortExpression="Comm_ID" ReadOnly="True" />
            <asp:BoundField DataField="Patient_ID" HeaderText="Patient ID" SortExpression="Patient_ID" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" SortExpression="Employee_ID" />
            <asp:CheckBoxField DataField="Comm_Phone_Call" HeaderText="Comm Phone Call" SortExpression="Comm_Phone_Call" />
            <asp:CheckBoxField DataField="Comm_Email" HeaderText="Comm Email" SortExpression="Comm_Email" />
            <asp:CheckBoxField DataField="Comm_In_Person" HeaderText="Comm In Person" SortExpression="Comm_In_Person" />
            <asp:BoundField DataField="Comm_Date" HeaderText="Comm Date" SortExpression="Comm_Date" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>
