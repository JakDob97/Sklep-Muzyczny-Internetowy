<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MusicShop.Forms.WebForm1" %>

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
            <div id="loginBox" style="width: 496px; margin-left: 512px; height: 724px;">
                <br />
                <br />
                <br />
                <asp:Label ID="title" runat="server" Text="Witamy w sklepie muzycznym!"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="clientLogin" runat="server" OnClick="loadClient" Text="Wejdź jako klient" />
                <br />
                <br />
                <br />
                lub<br />
                <br />
                <asp:Label ID="workerLabel" runat="server" Text="Zaloguj się jako pracownik:"></asp:Label>
                <br />
                <br />
                Login<br />
                <asp:TextBox ID="login" runat="server"></asp:TextBox>
                <br />
                <br />
                Hasło<br />
                <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="workerLogin" runat="server" OnClick="loadShop" Text="Zaloguj" />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
