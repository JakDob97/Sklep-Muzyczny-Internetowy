<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="MusicShop.Forms.Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../Styles/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div id="navbar">
            <asp:Button ID="stockButton" runat="server" Text="Asortyment" Height="32px" OnClick="stockButton_Click" />
&nbsp;<asp:Button ID="ordersButton" runat="server" Text="Zamówienia" Height="32px" OnClick="ordersButton_Click" />
&nbsp;<asp:Button ID="clientsButton" runat="server" Text="Dane klientów" Height="32px" OnClick="clientsButton_Click" />
&nbsp;<asp:Button ID="workersButton" runat="server" Text="Pracownicy" Height="32px" OnClick="workersButton_Click" />
&nbsp;<asp:Button ID="detailsButton" runat="server" Text="Inne" Height="32px" OnClick="detailsButton_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logoutButton" runat="server" Height="32px" OnClick="logoutButton_Click" Text="Wyloguj się" />
            <br />
        </div>
        </div>
        <div id="underbar" style="height: 537px; margin-left: 0px; margin-top: 0px;">
            <asp:GridView ID="tableStock" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Towary" ForeColor="#333333" GridLines="None" Width="1354px" DataKeyNames="ID_TOWARU" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_TOWARU" HeaderText="ID_TOWARU" SortExpression="ID_TOWARU" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ARTYSTA" HeaderText="ARTYSTA" SortExpression="ARTYSTA" />
                    <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
                    <asp:BoundField DataField="GATUNEK" HeaderText="GATUNEK" SortExpression="GATUNEK" />
                    <asp:BoundField DataField="WYTWORNIA" HeaderText="WYTWORNIA" SortExpression="WYTWORNIA" />
                    <asp:BoundField DataField="NAZWA_TOWARU" HeaderText="NAZWA_TOWARU" SortExpression="NAZWA_TOWARU" />
                    <asp:BoundField DataField="CENA_MAGAZYNOWA" HeaderText="CENA_MAGAZYNOWA" SortExpression="CENA_MAGAZYNOWA" />
                    <asp:BoundField DataField="DATA_WYDANIA" HeaderText="DATA_WYDANIA" SortExpression="DATA_WYDANIA" />
                    <asp:BoundField DataField="ILOSC_TOWARU" HeaderText="ILOSC_TOWARU" SortExpression="ILOSC_TOWARU" />
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
            <br />
            Nazwa towaru:&nbsp; <asp:TextBox ID="stockName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cena magazynowa:&nbsp;
            <asp:TextBox ID="stockPrice" runat="server"></asp:TextBox>
&nbsp;&nbsp; Data wydania:
            <asp:TextBox ID="stockDate" runat="server"></asp:TextBox>
&nbsp; Ilość towaru:&nbsp;
            <asp:TextBox ID="stockAmount" runat="server"></asp:TextBox>
&nbsp;<br />
            <br />
            Artysta:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Typ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gatunek:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wytwórnia:<br />
&nbsp;<asp:ListBox ID="artistList" runat="server" DataSourceID="Artyści" DataTextField="NAZWA_ARTYSTY" DataValueField="NAZWA_ARTYSTY" Height="117px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:ListBox ID="typeList" runat="server" DataSourceID="Typy" DataTextField="NAZWA_TYPU" DataValueField="NAZWA_TYPU" Height="117px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="genreList" runat="server" DataSourceID="Gatunki" DataTextField="NAZWA_GATUNKU" DataValueField="NAZWA_GATUNKU" Height="115px"></asp:ListBox>
&nbsp;<asp:ListBox ID="labelList" runat="server" DataSourceID="Wytwórnie" DataTextField="NAZWA_WYTWORNI" DataValueField="NAZWA_WYTWORNI" Height="117px"></asp:ListBox>
            <br />
            <br />
&nbsp;<asp:Button ID="addStock" runat="server" Text="Dodaj towar" OnClick="addStock_Click" />
&nbsp;<asp:SqlDataSource ID="Towary" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" SelectCommand="SELECT * FROM [TOWARY]" DeleteCommand="DELETE FROM [TOWARY] WHERE [ID_TOWARU] = @ID_TOWARU" InsertCommand="INSERT INTO [TOWARY] ([ARTYSTA], [TYP], [GATUNEK], [WYTWORNIA], [NAZWA_TOWARU], [CENA_MAGAZYNOWA], [DATA_WYDANIA], [ILOSC_TOWARU]) VALUES (@ARTYSTA, @TYP, @GATUNEK, @WYTWORNIA, @NAZWA_TOWARU, @CENA_MAGAZYNOWA, @DATA_WYDANIA, @ILOSC_TOWARU)" UpdateCommand="UPDATE [TOWARY] SET [ARTYSTA] = @ARTYSTA, [TYP] = @TYP, [GATUNEK] = @GATUNEK, [WYTWORNIA] = @WYTWORNIA, [NAZWA_TOWARU] = @NAZWA_TOWARU, [CENA_MAGAZYNOWA] = @CENA_MAGAZYNOWA, [DATA_WYDANIA] = @DATA_WYDANIA, [ILOSC_TOWARU] = @ILOSC_TOWARU WHERE [ID_TOWARU] = @ID_TOWARU">
                <DeleteParameters>
                    <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter Name="ARTYSTA" Type="String" ControlID="artistList"/>
                    <asp:ControlParameter Name="TYP" Type="String" ControlID="typeList"/>
                    <asp:ControlParameter Name="GATUNEK" Type="String" ControlID="genreList"/>
                    <asp:ControlParameter Name="WYTWORNIA" Type="String" ControlID="labelList"/>
                    <asp:ControlParameter Name="NAZWA_TOWARU" Type="String" ControlID="stockName"/>
                    <asp:ControlParameter Name="CENA_MAGAZYNOWA" Type="Decimal" ControlID="stockPrice"/>
                    <asp:ControlParameter Name="DATA_WYDANIA" Type="String" ControlID="stockDate"/>
                    <asp:ControlParameter Name="ILOSC_TOWARU" Type="Decimal" ControlID="stockAmount"/>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ARTYSTA" Type="String" />
                    <asp:Parameter Name="TYP" Type="String" />
                    <asp:Parameter Name="GATUNEK" Type="String" />
                    <asp:Parameter Name="WYTWORNIA" Type="String" />
                    <asp:Parameter Name="NAZWA_TOWARU" Type="String" />
                    <asp:Parameter Name="CENA_MAGAZYNOWA" Type="Decimal" />
                    <asp:Parameter Name="DATA_WYDANIA" Type="String" />
                    <asp:Parameter Name="ILOSC_TOWARU" Type="Decimal" />
                    <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Wytwórnie" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" SelectCommand="SELECT [NAZWA_WYTWORNI] FROM [WYTWORNIA]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Artyści" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" SelectCommand="SELECT [NAZWA_ARTYSTY] FROM [ARTYSTA]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Typy" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" SelectCommand="SELECT [NAZWA_TYPU] FROM [TYP]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Gatunki" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" SelectCommand="SELECT [NAZWA_GATUNKU] FROM [GATUNEK]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
