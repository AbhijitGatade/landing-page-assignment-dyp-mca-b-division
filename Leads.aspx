<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leads.aspx.cs" Inherits="Reiborn_Landing_Page.Leads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="gvData" runat="server">
            </asp:GridView>

            <asp:LinkButton ID="lbtnLogout" runat="server" OnClick="lbtnLogout_Click">Logout</asp:LinkButton>
            <br />

        </div>
    </form>
</body>
</html>
