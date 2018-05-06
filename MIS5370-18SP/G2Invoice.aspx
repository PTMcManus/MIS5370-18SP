<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2Invoice.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

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
    <form id="invoicePage" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Invoice Data:</h2>
            <asp:SqlDataSource ID="sqlDataSourceInvoice" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Invoice]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="invoiceGrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Invoice_ID" DataSourceID="sqlDataSourceInvoice">
                    <Columns>
                        <asp:BoundField DataField="Invoice_ID" HeaderText="Invoice_ID" ReadOnly="True" SortExpression="Invoice_ID" />
                        <asp:BoundField DataField="Packing_List_ID" HeaderText="Packing_List_ID" SortExpression="Packing_List_ID" />
                        <asp:BoundField DataField="Invoice_Received_Date" HeaderText="Invoice_Received_Date" SortExpression="Invoice_Received_Date" />
                        <asp:BoundField DataField="Invoice_Amt" HeaderText="Invoice_Amt" SortExpression="Invoice_Amt" />
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
                <br />
            </div>
        </div>
    </form>
</body>
</html>
