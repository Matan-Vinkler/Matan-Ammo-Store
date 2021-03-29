<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 51px;
            width: 231px;
            height: 109px;
            position: relative;
        }
        .auto-style2 {
            position: absolute;
            top: 190px;
            left: 13px;
            z-index: 1;
            width: 39px;
            height: 22px;
        }
        .auto-style3 {
            width: 73px;
        }
    </style>
</head>
<body style="background-color: darkblue">
    <form id="form1" runat="server">
        <div>
            <h1><b>Login</b></h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Username: </td>
                    <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Password: </td>
                    <td><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Button ID="Submit" runat="server" Text="Login" OnClick="Submit_Click" /></td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text=""></asp:Label>
    </form>
</body>
</html>
