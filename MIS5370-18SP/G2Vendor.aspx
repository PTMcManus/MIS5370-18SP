<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2Vendor.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

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
    <form id="vendorPage" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <div>
                    <h2>Vendor:</h2>
            <asp:SqlDataSource ID="sqlDataSourceVendor" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Vendor]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </div>
                <asp:GridView ID="vendorData" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="sqlDataSourceVendor" DataKeyNames="Vendor_ID">
                    <Columns>
                        <asp:BoundField DataField="Vendor_ID" HeaderText="Vendor_ID" SortExpression="Vendor_ID" ReadOnly="True" />
                        <asp:BoundField DataField="Vendor_Ph_Number" HeaderText="Vendor_Ph_Number" SortExpression="Vendor_Ph_Number" />
                        <asp:BoundField DataField="Vendor_Name" HeaderText="Vendor_Name" SortExpression="Vendor_Name" />
                        <asp:BoundField DataField="Vendor_Type" HeaderText="Vendor_Type" SortExpression="Vendor_Type" />
                        <asp:BoundField DataField="Vendor_Address" HeaderText="Vendor_Address" SortExpression="Vendor_Address" />
                        <asp:BoundField DataField="Supply_ID" HeaderText="Supply_ID" SortExpression="Supply_ID" />
                        <asp:BoundField DataField="Person_of_Contact" HeaderText="Person_of_Contact" SortExpression="Person_of_Contact" />
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
