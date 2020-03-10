<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="MusicShop.Forms.Orders" %>

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
        <div id="mainContent">
            <asp:GridView ID="tableOrder" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Zamówienia" ForeColor="#333333" GridLines="None" Width="106px" DataKeyNames="ID_ZAMOWIENIA" OnSelectedIndexChanged="tableOrder_SelectedIndexChanged" style="margin-left: 0px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ID_ZAMOWIENIA" HeaderText="ID_ZAMOWIENIA" SortExpression="ID_ZAMOWIENIA" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ID_KLIENTA" HeaderText="KLIENT" SortExpression="ID_KLIENTA" />
                    <asp:BoundField DataField="ID_PRACOWNIKA" HeaderText="PRACOWNIK" SortExpression="ID_PRACOWNIKA" />
                    <asp:BoundField DataField="NAZWA_ZAMOWIENIA" HeaderText="NAZWA" SortExpression="NAZWA_ZAMOWIENIA" />
                    <asp:BoundField DataField="DATA_ZAMOWIENIA" HeaderText="DATA_ZAMOWIENIA" SortExpression="DATA_ZAMOWIENIA" />
                    <asp:BoundField DataField="DATA_REALIZACJI" HeaderText="DATA_REALIZACJI" SortExpression="DATA_REALIZACJI" />
                    <asp:BoundField DataField="CENA_ZAMOWIENIA" HeaderText="CENA" SortExpression="CENA_ZAMOWIENIA" />
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
            <asp:SqlDataSource ID="Zamówienia" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [ZAMOWIENIA] WHERE [ID_ZAMOWIENIA] = @ID_ZAMOWIENIA" InsertCommand="INSERT INTO [ZAMOWIENIA] ([ID_KLIENTA], [ID_PRACOWNIKA], [NAZWA_ZAMOWIENIA], [DATA_ZAMOWIENIA], [DATA_REALIZACJI], [CENA_ZAMOWIENIA]) VALUES (@ID_KLIENTA, @ID_PRACOWNIKA, @NAZWA_ZAMOWIENIA, @DATA_ZAMOWIENIA, @DATA_REALIZACJI, @CENA_ZAMOWIENIA)" SelectCommand="SELECT * FROM [ZAMOWIENIA]" UpdateCommand="UPDATE [ZAMOWIENIA] SET [ID_KLIENTA] = @ID_KLIENTA, [ID_PRACOWNIKA] = @ID_PRACOWNIKA, [NAZWA_ZAMOWIENIA] = @NAZWA_ZAMOWIENIA, [DATA_ZAMOWIENIA] = @DATA_ZAMOWIENIA, [DATA_REALIZACJI] = @DATA_REALIZACJI, [CENA_ZAMOWIENIA] = @CENA_ZAMOWIENIA WHERE [ID_ZAMOWIENIA] = @ID_ZAMOWIENIA">
                <DeleteParameters>
                    <asp:Parameter Name="ID_ZAMOWIENIA" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_KLIENTA" Type="Int32" />
                    <asp:Parameter Name="ID_PRACOWNIKA" Type="Int32" />
                    <asp:Parameter Name="NAZWA_ZAMOWIENIA" Type="String" />
                    <asp:Parameter Name="DATA_ZAMOWIENIA" Type="String" />
                    <asp:Parameter Name="DATA_REALIZACJI" Type="String" />
                    <asp:Parameter Name="CENA_ZAMOWIENIA" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID_KLIENTA" Type="Int32" />
                    <asp:Parameter Name="ID_PRACOWNIKA" Type="Int32" />
                    <asp:Parameter Name="NAZWA_ZAMOWIENIA" Type="String" />
                    <asp:Parameter Name="DATA_ZAMOWIENIA" Type="String" />
                    <asp:Parameter Name="DATA_REALIZACJI" Type="String" />
                    <asp:Parameter Name="CENA_ZAMOWIENIA" Type="Decimal" />
                    <asp:Parameter Name="ID_ZAMOWIENIA" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div id="orderBar" height: 59px">
                <br />
                <asp:Button ID="completeOrder" runat="server" Height="24px" OnClick="completeOrder_Click" Text="Zrealizuj zamówienie" Width="198px" />
                <br />
                <br />
            </div>
            <hr/>
            <asp:GridView ID="tableAmount" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_ZAMOWIENIA,ID_TOWARU" DataSourceID="Ilość" ForeColor="#333333" GridLines="None" Width="1087px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_ZAMOWIENIA" HeaderText="ID_ZAMOWIENIA" ReadOnly="True" SortExpression="ID_ZAMOWIENIA" />
                    <asp:BoundField DataField="ID_TOWARU" HeaderText="ID_TOWARU" ReadOnly="True" SortExpression="ID_TOWARU" />
                    <asp:BoundField DataField="CENA_ZAKUPU" HeaderText="CENA_ZAKUPU" SortExpression="CENA_ZAKUPU" />
                    <asp:BoundField DataField="ILOSC_NA_ZAMOWIENIE" HeaderText="ILOSC_NA_ZAMOWIENIE" SortExpression="ILOSC_NA_ZAMOWIENIE" />
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
            <asp:SqlDataSource ID="Ilość" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [ILOSC_ZAMOWIONEGO_TOWARU] WHERE [ID_ZAMOWIENIA] = @ID_ZAMOWIENIA AND [ID_TOWARU] = @ID_TOWARU" InsertCommand="INSERT INTO [ILOSC_ZAMOWIONEGO_TOWARU] ([ID_ZAMOWIENIA], [ID_TOWARU], [CENA_ZAKUPU], [ILOSC_NA_ZAMOWIENIE]) VALUES (@ID_ZAMOWIENIA, @ID_TOWARU, @CENA_ZAKUPU, @ILOSC_NA_ZAMOWIENIE)" SelectCommand="SELECT * FROM [ILOSC_ZAMOWIONEGO_TOWARU]" UpdateCommand="UPDATE [ILOSC_ZAMOWIONEGO_TOWARU] SET [CENA_ZAKUPU] = @CENA_ZAKUPU, [ILOSC_NA_ZAMOWIENIE] = @ILOSC_NA_ZAMOWIENIE WHERE [ID_ZAMOWIENIA] = @ID_ZAMOWIENIA AND [ID_TOWARU] = @ID_TOWARU">
                <DeleteParameters>
                    <asp:Parameter Name="ID_ZAMOWIENIA" Type="Int32" />
                    <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_ZAMOWIENIA" Type="Int32" />
                    <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                    <asp:Parameter Name="CENA_ZAKUPU" Type="Decimal" />
                    <asp:Parameter Name="ILOSC_NA_ZAMOWIENIE" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CENA_ZAKUPU" Type="Decimal" />
                    <asp:Parameter Name="ILOSC_NA_ZAMOWIENIE" Type="Decimal" />
                    <asp:Parameter Name="ID_ZAMOWIENIA" Type="Int32" />
                    <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
