<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="G2Inventory.aspx.cs" Inherits="MIS5370_18SP.G2Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style2">
            <asp:Label ID="Label6" runat="server" Font-Overline="False" Font-Size="Larger" Text="Enter Data Here:"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Inventory Tag ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:TextBox ID="inventoryID" runat="server"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Room Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:TextBox ID="roomNum" runat="server"></asp:TextBox>
                <br />
                <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Inventory Quantity"></asp:Label>
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="inventoryQuantity" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Inventory Status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:TextBox ID="inventoryStat" runat="server"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Recommended Amount"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="recommendAmt" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Urgency Indicator"></asp:Label>
                <br />
                <div class="auto-style1">
                <asp:RadioButtonList ID="radioUrgency" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" RepeatDirection="Horizontal" Height="0px" Width="101px" align="center">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>   
                </asp:RadioButtonList>
                </div>
                <br />
            <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Size="Small" Text="Submit" OnClick="btnSubmit_Click1" style="height: 26px"/>
            <br />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mis5370ConnectionString %>" SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Inventory_Tag_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Inventory_Tag_ID" HeaderText="Inventory_Tag_ID" ReadOnly="True" SortExpression="Inventory_Tag_ID" />
                <asp:BoundField DataField="Room_Number" HeaderText="Room_Number" SortExpression="Room_Number" />
                <asp:BoundField DataField="Inventory_Quantity" HeaderText="Inventory_Quantity" SortExpression="Inventory_Quantity" />
                <asp:BoundField DataField="Inventory_Status" HeaderText="Inventory_Status" SortExpression="Inventory_Status" />
                <asp:BoundField DataField="Recommended_Amt" HeaderText="Recommended_Amt" SortExpression="Recommended_Amt" />
                <asp:CheckBoxField DataField="Urgency_Indicator" HeaderText="Urgency_Indicator" SortExpression="Urgency_Indicator" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </form>
</body>
</html>
