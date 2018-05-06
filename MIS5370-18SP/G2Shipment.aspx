<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2Shipment.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

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
    <form id="shipmentPage" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Shipment Data:</h2>
            <asp:SqlDataSource ID="sqlDataSourceShipment" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Shipment]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
                <asp:GridView ID="shipmentData" runat="server" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="sqlDataSourceShipment" AutoGenerateColumns="False" DataKeyNames="Shipment_ID">
                    <Columns>
                        <asp:BoundField DataField="Shipment_ID" HeaderText="Shipment_ID" ReadOnly="True" SortExpression="Shipment_ID" />
                        <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
                        <asp:BoundField DataField="Packing_List_ID" HeaderText="Packing_List_ID" SortExpression="Packing_List_ID" />
                        <asp:BoundField DataField="Shipment_Date" HeaderText="Shipment_Date" SortExpression="Shipment_Date" />
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
