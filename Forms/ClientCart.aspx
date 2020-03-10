<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientCart.aspx.cs" Inherits="MusicShop.Forms.ClientCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../Styles/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <asp:Button ID="shopButton" runat="server" Text="Sklep" Height="40px" Width="57px" OnClick="shopButton_Click" />
            <asp:Button ID="cartButton" runat="server" Text="Twój koszyk" Height="40px" Width="113px" OnClick="cartButton_Click" />
            <br />
        </div>
        <div>
            <div id="clientContact">
                <div id="cartBox">
                    <asp:GridView ID="shoppingCart" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_TOWARU" DataSourceID="Koszyk" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ID_TOWARU" HeaderText="ID_TOWARU" InsertVisible="False" ReadOnly="True" SortExpression="ID_TOWARU" Visible="False" />
                            <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                            <asp:BoundField DataField="Ilosc" HeaderText="Ilosc" SortExpression="Ilosc" />
                            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
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
                <asp:SqlDataSource ID="Koszyk" runat="server" ConnectionString="<%$ ConnectionStrings:Sklep_MuzycznyConnectionString %>" DeleteCommand="DELETE FROM [KOSZYK] WHERE [ID_TOWARU] = @ID_TOWARU" InsertCommand="INSERT INTO [KOSZYK] ([Nazwa], [Ilosc], [Cena]) VALUES (@Nazwa, @Ilosc, @Cena)" SelectCommand="SELECT * FROM [KOSZYK]" UpdateCommand="UPDATE [KOSZYK] SET [Ilosc] = @Ilosc WHERE [ID_TOWARU] = @ID_TOWARU">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nazwa" Type="String" />
                        <asp:Parameter Name="Ilosc" Type="Int32" />
                        <asp:Parameter Name="Cena" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ilosc" Type="Int32" />
                        <asp:Parameter Name="ID_TOWARU" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                Cena zamówienia:
                <asp:Label ID="orderFullPrice" runat="server" Text="00.00"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Twoje dane kontaktowe:"></asp:Label>
                <br />
                <br />
                Imię: <asp:TextBox ID="clientName" runat="server"></asp:TextBox>
&nbsp; Nazwisko:<asp:TextBox ID="clientSurname" runat="server"></asp:TextBox>
                <br />
                <br />
                Miasto:
                <asp:TextBox ID="city" runat="server" Width="220px"></asp:TextBox>
                <br />
                Ulica:
                <asp:TextBox ID="street" runat="server" Width="214px"></asp:TextBox>
                <br />
                Kod pocztowy:
                <asp:TextBox ID="postcode" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="orderPlace" runat="server" Text="Złóż zamówienie" OnClick="orderPlace_Click" />
            </div>
        </div>
    </form>
</body>
</html>
