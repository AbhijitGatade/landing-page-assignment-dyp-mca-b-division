<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Reiborn_Landing_Page.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="assets\css\main.css" rel="stylesheet" />
</head>
<body style="background-color:violet;">
    <form id="form1" runat="server">
        <div>
            <table border="1" style="width: 100%;">
                <tr style="width: 100%;">
                    <td style="width: 50%;">
                        <h1>Own A Dream Plot</h1>
                        <p>Your serene plot just near your city.</p>
                        <img src="assets/images/banner.jpg" alt="" />
                    </td>
                    <td style="width: 50%;">
                        <asp:Label ID="lblMessage" ForeColor="Red" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblName" runat="server" Text="Name" CssClass="label"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="label"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblMobileNo" runat="server" Text="Mobile No" CssClass="label"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>


        </div>
        <asp:HyperLink ID="hlinkLogin" runat="server" NavigateUrl="~/Login.aspx">Goto Login</asp:HyperLink>
    </form>
</body>
</html>
