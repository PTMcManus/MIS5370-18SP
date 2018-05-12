<%@ Page Title="G3CommunicationType" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="G3CommunicationType.aspx.cs" Inherits="MIS5370_18SP.G3CommunicationType" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>These are the communication types which we used to communicate with patients:</h3>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Communication_Type]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="Comm_Type_ID">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Comm_Type_ID" HeaderText="Comm Type ID" SortExpression="Comm_Type_ID" ReadOnly="True" />
            <asp:BoundField DataField="Comm_ID" HeaderText="Comm ID" SortExpression="Comm_ID" />
            <asp:CheckBoxField DataField="Comm_Type_Complaint" HeaderText="Comm Type Complaint" SortExpression="Comm_Type_Complaint" />
            <asp:CheckBoxField DataField="Comm_Type_Enquiry" HeaderText="Comm Type Enquiry" SortExpression="Comm_Type_Enquiry" />
            <asp:CheckBoxField DataField="Comm_Type_Other" HeaderText="Comm Type Other" SortExpression="Comm_Type_Other" />
            <asp:BoundField DataField="Comm_Type_notes" HeaderText="Comm Type notes" SortExpression="Comm_Type_notes" />
            <asp:CheckBoxField DataField="Comm_Type_Status_Ongoing" HeaderText="Comm Type Status Ongoing" SortExpression="Comm_Type_Status_Ongoing" />
            <asp:CheckBoxField DataField="Comm_Type_Status_Closed" HeaderText="Comm Type Status Closed" SortExpression="Comm_Type_Status_Closed" />
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
