<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="MusicShop.Forms.Clients" %>

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
        <div id="mainContent" style="width: 1366px; margin-left: 3px; margin-right: 0px;">
            <asp:GridView ID="tableClients" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_KLIENTA" DataSourceID="Klienci" ForeColor="#333333" GridLines="None" Width="1352px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_KLIENTA" HeaderText="ID_KLIENTA" InsertVisible="False" ReadOnly="True" SortExpression="ID_KLIENTA" />
                    <asp:BoundField DataField="IMIE_KLIENTA" HeaderText="IMIE_KLIENTA" SortExpression="IMIE_KLIENTA" />
                    <asp:BoundField DataField="NAZWISKO_KLIENTA" HeaderText="NAZWISKO_KLIENTA" SortExpression="NAZWISKO_KLIENTA" />
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
            <asp:SqlDataSource ID="Klienci" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [KLIENCI] WHERE [ID_KLIENTA] = @ID_KLIENTA" InsertCommand="INSERT INTO [KLIENCI] ([IMIE_KLIENTA], [NAZWISKO_KLIENTA]) VALUES (@IMIE_KLIENTA, @NAZWISKO_KLIENTA)" SelectCommand="SELECT * FROM [KLIENCI]" UpdateCommand="UPDATE [KLIENCI] SET [IMIE_KLIENTA] = @IMIE_KLIENTA, [NAZWISKO_KLIENTA] = @NAZWISKO_KLIENTA WHERE [ID_KLIENTA] = @ID_KLIENTA">
                <DeleteParameters>
                    <asp:Parameter Name="ID_KLIENTA" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IMIE_KLIENTA" Type="String" />
                    <asp:Parameter Name="NAZWISKO_KLIENTA" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IMIE_KLIENTA" Type="String" />
                    <asp:Parameter Name="NAZWISKO_KLIENTA" Type="String" />
                    <asp:Parameter Name="ID_KLIENTA" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <hr />
            <asp:GridView ID="tableAddress" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_ADRESU" DataSourceID="Adresy" ForeColor="#333333" GridLines="None" Width="1352px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_ADRESU" HeaderText="ID_ADRESU" InsertVisible="False" ReadOnly="True" SortExpression="ID_ADRESU" />
                    <asp:BoundField DataField="ID_KLIENTA" HeaderText="ID_KLIENTA" SortExpression="ID_KLIENTA" />
                    <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
                    <asp:BoundField DataField="ULICA" HeaderText="ULICA" SortExpression="ULICA" />
                    <asp:BoundField DataField="KOD" HeaderText="KOD" SortExpression="KOD" />
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
            <asp:SqlDataSource ID="Adresy" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [ADRESY_KLIENTOW] WHERE [ID_ADRESU] = @ID_ADRESU" InsertCommand="INSERT INTO [ADRESY_KLIENTOW] ([ID_KLIENTA], [MIASTO], [ULICA], [KOD]) VALUES (@ID_KLIENTA, @MIASTO, @ULICA, @KOD)" SelectCommand="SELECT * FROM [ADRESY_KLIENTOW]" UpdateCommand="UPDATE [ADRESY_KLIENTOW] SET [ID_KLIENTA] = @ID_KLIENTA, [MIASTO] = @MIASTO, [ULICA] = @ULICA, [KOD] = @KOD WHERE [ID_ADRESU] = @ID_ADRESU">
                <DeleteParameters>
                    <asp:Parameter Name="ID_ADRESU" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_KLIENTA" Type="Int32" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="ULICA" Type="String" />
                    <asp:Parameter Name="KOD" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID_KLIENTA" Type="Int32" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="ULICA" Type="String" />
                    <asp:Parameter Name="KOD" Type="String" />
                    <asp:Parameter Name="ID_ADRESU" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
