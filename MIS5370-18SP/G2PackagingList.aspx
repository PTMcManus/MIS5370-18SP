<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2PackagingList.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

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
    <form id="packagingListPage" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Packaging List Data:</h2>
            <asp:SqlDataSource ID="sqlDataSourcePackagingList" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Shipment_Slip]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
                <asp:GridView ID="packinglistData" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Shipment_Slip_ID" DataSourceID="sqlDataSourcePackagingList">
                    <Columns>
                        <asp:BoundField DataField="Shipment_Slip_ID" HeaderText="Shipment_Slip_ID" ReadOnly="True" SortExpression="Shipment_Slip_ID" />
                        <asp:BoundField DataField="Shipment_Date_Time" HeaderText="Shipment_Date_Time" SortExpression="Shipment_Date_Time" />
                        <asp:BoundField DataField="Shipment_Quantity" HeaderText="Shipment_Quantity" SortExpression="Shipment_Quantity" />
                        <asp:BoundField DataField="Shipment_Type" HeaderText="Shipment_Type" SortExpression="Shipment_Type" />
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
