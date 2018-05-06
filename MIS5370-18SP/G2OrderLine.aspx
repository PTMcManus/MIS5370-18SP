﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2OrderLine.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

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
    <form id="orderlineData" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Order Line Data:</h2>
            <asp:SqlDataSource ID="sqlDataSourceOrderLine" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Order_Line]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
                <asp:GridView ID="orderLineData" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Order_Line_ID" DataSourceID="sqlDataSourceOrderLine">
                    <Columns>
                        <asp:BoundField DataField="Order_Line_ID" HeaderText="Order_Line_ID" ReadOnly="True" SortExpression="Order_Line_ID" />
                        <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
                        <asp:BoundField DataField="Order_Line_Price" HeaderText="Order_Line_Price" SortExpression="Order_Line_Price" />
                        <asp:BoundField DataField="Order_Line_Quantity" HeaderText="Order_Line_Quantity" SortExpression="Order_Line_Quantity" />
                        <asp:BoundField DataField="Supply_ID" HeaderText="Supply_ID" SortExpression="Supply_ID" />
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
