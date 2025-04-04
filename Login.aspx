<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Reiborn_Landing_Page.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .alert {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Login</h1>
            <h1>
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </h1>

            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsername" runat="server" required></asp:TextBox>
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required></asp:TextBox>
            <br />
            <asp:ImageButton ID="ibtnLogin" runat="server" Height="60px" ImageUrl="~/assets/images/login.png" Width="100px" OnClick="ibtnLogin_Click" />
        </div>
    </form>
</body>
</html>
