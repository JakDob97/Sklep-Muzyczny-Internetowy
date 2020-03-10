<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workers.aspx.cs" Inherits="MusicShop.Forms.Workers" %>

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
        <div id="mainContent" style="width: 1366px; margin-left: 3px">
        <div id="sideBar" style="width: 246px; height: 327px; margin-left: 0px;">
            <br />
            <br />
            <br />
            Imię pracownika:<br />
            <asp:TextBox ID="workerName" runat="server" ></asp:TextBox>
            <br />
            <br />
            Nazwisko pracownika:<br />
            <asp:TextBox ID="workerSurname" runat="server"></asp:TextBox>
&nbsp;<br />
            <br />
            Stanowisko pracownika:<br />
            <asp:TextBox ID="workerOccupation" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="workerAdd" runat="server" Text="Dodaj pracownika" Width="173px" OnClick="workerAdd_Click" />
        </div>
            <asp:GridView ID="workerTable" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Pracownicy" ForeColor="#333333" GridLines="None" Width="829px" DataKeyNames="ID_PRACOWNIKA">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_PRACOWNIKA" HeaderText="ID_PRACOWNIKA" SortExpression="ID_PRACOWNIKA" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="IMIE_PRACOWNIKA" HeaderText="IMIE_PRACOWNIKA" SortExpression="IMIE_PRACOWNIKA" />
                    <asp:BoundField DataField="NAZWISKO_PRACOWNIKA" HeaderText="NAZWISKO_PRACOWNIKA" SortExpression="NAZWISKO_PRACOWNIKA" />
                    <asp:BoundField DataField="STANOWISKO_PRACOWNIKA" HeaderText="STANOWISKO_PRACOWNIKA" SortExpression="STANOWISKO_PRACOWNIKA" />
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
            <asp:SqlDataSource ID="Pracownicy" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [PRACOWNICY] WHERE [ID_PRACOWNIKA] = @ID_PRACOWNIKA" InsertCommand="INSERT INTO [PRACOWNICY] ([IMIE_PRACOWNIKA], [NAZWISKO_PRACOWNIKA], [STANOWISKO_PRACOWNIKA]) VALUES (@IMIE_PRACOWNIKA, @NAZWISKO_PRACOWNIKA, @STANOWISKO_PRACOWNIKA)" SelectCommand="SELECT * FROM [PRACOWNICY]" UpdateCommand="UPDATE [PRACOWNICY] SET [IMIE_PRACOWNIKA] = @IMIE_PRACOWNIKA, [NAZWISKO_PRACOWNIKA] = @NAZWISKO_PRACOWNIKA, [STANOWISKO_PRACOWNIKA] = @STANOWISKO_PRACOWNIKA WHERE [ID_PRACOWNIKA] = @ID_PRACOWNIKA">
                <DeleteParameters>
                    <asp:Parameter Name="ID_PRACOWNIKA" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter Name="IMIE_PRACOWNIKA" Type="String" ControlID="workerName" />
                    <asp:ControlParameter Name="NAZWISKO_PRACOWNIKA" Type="String" ControlID="workerSurname" />
                    <asp:ControlParameter Name="STANOWISKO_PRACOWNIKA" Type="String" ControlID="workerOccupation" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IMIE_PRACOWNIKA" Type="String" />
                    <asp:Parameter Name="NAZWISKO_PRACOWNIKA" Type="String" />
                    <asp:Parameter Name="STANOWISKO_PRACOWNIKA" Type="String" />
                    <asp:Parameter Name="ID_PRACOWNIKA" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
