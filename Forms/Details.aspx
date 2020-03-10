<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="MusicShop.Forms.Details" %>

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
        <div id="sideBar" style="width: 235px; height: 750px; margin-left: 0px;">
            <br />
            <br />
            <br />
            Nazwa artysty:<br />
            <asp:TextBox ID="artistName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="addArtist" runat="server" OnClick="addArtist_Click" Text="Dodaj artystę" />
            <br />
            <br />
            Nazwa wytwórni:<br />
            <asp:TextBox ID="labelName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="addLabel" runat="server" OnClick="addLabel_Click" Text="Dodaj wytwórnię" />
            <br />
            <br />
            Nazwa typu:<br />
            <asp:TextBox ID="typeName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="addType" runat="server" OnClick="addType_Click" Text="Dodaj typ" />
            <br />
            <br />
            Nazwa gatunku:<br />
            <asp:TextBox ID="genreName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="addGenre" runat="server" OnClick="addGenre_Click" Text="Dodaj gatunek" />
            <br />
            <br />
        <asp:SqlDataSource ID="Artyści" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [ARTYSTA] WHERE [ID_ARTYSTY] = @ID_ARTYSTY" InsertCommand="INSERT INTO [ARTYSTA] ([NAZWA_ARTYSTY]) VALUES (@NAZWA_ARTYSTY)" SelectCommand="SELECT * FROM [ARTYSTA]" UpdateCommand="UPDATE [ARTYSTA] SET [NAZWA_ARTYSTY] = @NAZWA_ARTYSTY WHERE [ID_ARTYSTY] = @ID_ARTYSTY">
            <DeleteParameters>
                <asp:Parameter Name="ID_ARTYSTY" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="NAZWA_ARTYSTY" Type="String" ControlID="artistName"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAZWA_ARTYSTY" Type="String" />
                <asp:Parameter Name="ID_ARTYSTY" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Wytwórnie" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [WYTWORNIA] WHERE [ID_WYTWORNI] = @ID_WYTWORNI" InsertCommand="INSERT INTO [WYTWORNIA] ([NAZWA_WYTWORNI]) VALUES (@NAZWA_WYTWORNI)" SelectCommand="SELECT * FROM [WYTWORNIA]" UpdateCommand="UPDATE [WYTWORNIA] SET [NAZWA_WYTWORNI] = @NAZWA_WYTWORNI WHERE [ID_WYTWORNI] = @ID_WYTWORNI">
            <DeleteParameters>
                <asp:Parameter Name="ID_WYTWORNI" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="NAZWA_WYTWORNI" Type="String" ControlID="labelName"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAZWA_WYTWORNI" Type="String" />
                <asp:Parameter Name="ID_WYTWORNI" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <br />
        <asp:SqlDataSource ID="Typy" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [TYP] WHERE [ID_TYPU] = @ID_TYPU" InsertCommand="INSERT INTO [TYP] ([NAZWA_TYPU]) VALUES (@NAZWA_TYPU)" SelectCommand="SELECT * FROM [TYP]" UpdateCommand="UPDATE [TYP] SET [NAZWA_TYPU] = @NAZWA_TYPU WHERE [ID_TYPU] = @ID_TYPU">
            <DeleteParameters>
                <asp:Parameter Name="ID_TYPU" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="NAZWA_TYPU" Type="String" ControlID="typeName"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAZWA_TYPU" Type="String" />
                <asp:Parameter Name="ID_TYPU" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Gatunki" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [GATUNEK] WHERE [ID_GATUNKU] = @ID_GATUNKU" InsertCommand="INSERT INTO [GATUNEK] ([NAZWA_GATUNKU]) VALUES (@NAZWA_GATUNKU)" SelectCommand="SELECT * FROM [GATUNEK]" UpdateCommand="UPDATE [GATUNEK] SET [NAZWA_GATUNKU] = @NAZWA_GATUNKU WHERE [ID_GATUNKU] = @ID_GATUNKU">
            <DeleteParameters>
                <asp:Parameter Name="ID_GATUNKU" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="NAZWA_GATUNKU" Type="String" ControlID="genreName"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAZWA_GATUNKU" Type="String" />
                <asp:Parameter Name="ID_GATUNKU" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
            <asp:GridView ID="tableLabels" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Wytwórnie" ForeColor="#333333" GridLines="None" Width="520px" DataKeyNames="ID_WYTWORNI">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_WYTWORNI" HeaderText="ID_WYTWORNI" SortExpression="ID_WYTWORNI" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="NAZWA_WYTWORNI" HeaderText="NAZWA_WYTWORNI" SortExpression="NAZWA_WYTWORNI" />
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
            <asp:GridView ID="tableArtists" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Artyści" ForeColor="#333333" GridLines="None" Width="524px" DataKeyNames="ID_ARTYSTY">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_ARTYSTY" HeaderText="ID_ARTYSTY" SortExpression="ID_ARTYSTY" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="NAZWA_ARTYSTY" HeaderText="NAZWA_ARTYSTY" SortExpression="NAZWA_ARTYSTY" />
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
            <asp:GridView ID="tableTypes" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Typy" ForeColor="#333333" GridLines="None" Width="523px" DataKeyNames="ID_TYPU">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_TYPU" HeaderText="ID_TYPU" SortExpression="ID_TYPU" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="NAZWA_TYPU" HeaderText="NAZWA_TYPU" SortExpression="NAZWA_TYPU" />
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
            <asp:GridView ID="tableGenres" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Gatunki" ForeColor="#333333" GridLines="None" Width="530px" DataKeyNames="ID_GATUNKU" style="margin-left: 0px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID_GATUNKU" HeaderText="ID_GATUNKU" SortExpression="ID_GATUNKU" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="NAZWA_GATUNKU" HeaderText="NAZWA_GATUNKU" SortExpression="NAZWA_GATUNKU" />
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
        </div>
    </form>
</body>
</html>
