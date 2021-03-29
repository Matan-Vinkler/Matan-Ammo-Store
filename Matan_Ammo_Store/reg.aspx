<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            width: 1465px;
            height: 61px;
        }
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: 0px;
            width: 280px;
            height: 204px;
            margin-top: 74px;
        }
        .auto-style3 {
            position: absolute;
            top: 302px;
            left: 14px;
            z-index: 1;
            width: 40px;
            height: 23px;
        }
    </style>
</head>
<body style="background-color: darkblue">
    <form id="form1" runat="server">
    <div>
        <h1 class="auto-style1"><b>Sign Up</b></h1>

        <table class="auto-style2">
            <tr>
                <td>Username: </td>
                <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password: </td>
                <td><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone: </td>
                <td><asp:TextBox ID="Phone" runat="server" TextMode="Phone"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/></td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
