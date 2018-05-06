<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2Inventory.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="inventoryPage" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Inventory Data:</h2>
            <asp:SqlDataSource ID="sqlDataSourceInventory" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Inventory]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
        <asp:GridView ID="inventoryData" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Inventory_Tag_ID" DataSourceID="sqlDataSourceInventory" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Inventory_Tag_ID" HeaderText="Inventory_Tag_ID" ReadOnly="True" SortExpression="Inventory_Tag_ID" />
                <asp:BoundField DataField="Room_Number" HeaderText="Room_Number" SortExpression="Room_Number" />
                <asp:BoundField DataField="Inventory_Quantity" HeaderText="Inventory_Quantity" SortExpression="Inventory_Quantity" />
                <asp:BoundField DataField="Inventory_Status" HeaderText="Inventory_Status" SortExpression="Inventory_Status" />
                <asp:BoundField DataField="Recommended_Amt" HeaderText="Recommended_Amt" SortExpression="Recommended_Amt" />
                <asp:CheckBoxField DataField="Urgency_Indicator" HeaderText="Urgency_Indicator" SortExpression="Urgency_Indicator" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            </div>
        </div>
    </form>
</body>
</html>
