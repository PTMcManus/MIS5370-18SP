<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2Supplies.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

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
    <form id="suppliesPage" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Supplies Data:</h2>
            <asp:SqlDataSource ID="sqlDataSourceSupplies" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Supplies]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
                <asp:GridView ID="suppliesData" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Supply_ID" DataSourceID="sqlDataSourceSupplies">
                    <Columns>
                        <asp:BoundField DataField="Supply_ID" HeaderText="Supply_ID" ReadOnly="True" SortExpression="Supply_ID" />
                        <asp:BoundField DataField="Inventory_Tag_ID" HeaderText="Inventory_Tag_ID" SortExpression="Inventory_Tag_ID" />
                        <asp:BoundField DataField="Supply_Name" HeaderText="Supply_Name" SortExpression="Supply_Name" />
                        <asp:BoundField DataField="Supply_Type" HeaderText="Supply_Type" SortExpression="Supply_Type" />
                        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
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
