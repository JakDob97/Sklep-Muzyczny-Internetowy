<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientStock.aspx.cs" Inherits="MusicShop.Forms.ClientStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../Styles/style.css" />
    <title></title>
    <style type="text/css">
        #navbar {
            width: 1436px;
            height: 40px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <asp:Button ID="shopButton" runat="server" Text="Sklep" Height="40px" Width="57px" OnClick="shopButton_Click" />
            <asp:Button ID="cartButton" runat="server" Text="Twój koszyk" Height="40px" Width="113px" OnClick="cartButton_Click" />
            <br />
        </div>
        <div id="mainContent" style="width: 1366px; margin-left: 3px">
        <div id="sideBar" style="width: 295px; height: 562px; margin-left: 0px;">
            <br />
            <br />
            <br />
            Tu wpisz 
            <br />
            ilość wybranego towaru:<br />
            <asp:TextBox ID="shopAmount" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="addToCart" runat="server" Text="Dodaj do koszyka" Width="173px" OnClick="addToCart_Click" />
            <br />
            <br />
        </div>
            <asp:GridView ID="shop" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Towary" ForeColor="#333333" GridLines="None" Width="829px" OnSelectedIndexChanged="shop_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ARTYSTA" HeaderText="ARTYSTA" SortExpression="ARTYSTA" />
                    <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
                    <asp:BoundField DataField="GATUNEK" HeaderText="GATUNEK" SortExpression="GATUNEK" />
                    <asp:BoundField DataField="WYTWORNIA" HeaderText="WYTWORNIA" SortExpression="WYTWORNIA" />
                    <asp:BoundField DataField="NAZWA_TOWARU" HeaderText="NAZWA_TOWARU" SortExpression="NAZWA_TOWARU" />
                    <asp:BoundField DataField="CENA_MAGAZYNOWA" HeaderText="CENA_MAGAZYNOWA" SortExpression="CENA_MAGAZYNOWA" />
                    <asp:BoundField DataField="DATA_WYDANIA" HeaderText="DATA_WYDANIA" SortExpression="DATA_WYDANIA" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="Towary" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" SelectCommand="SELECT [ARTYSTA], [TYP], [GATUNEK], [WYTWORNIA], [NAZWA_TOWARU], [CENA_MAGAZYNOWA], [DATA_WYDANIA] FROM [TOWARY]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
