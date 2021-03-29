<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="buynow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buy Now</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            left: -1px;
            top: 124px;
            width: 363px;
            height: 153px;
        }
        .auto-style2 {
            position: absolute;
            top: 302px;
            left: 7px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Buy Now!</h1>

            <table id="table1" class="auto-style1">
                <tr>
                    <td>Enter your username: </td>
                    <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enter your password: </td>
                    <td><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enter your VISA Card's number: </td>
                    <td><asp:TextBox ID="VISA" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Buy" Text="Buy Now!" runat="server" OnClick="Buy_Click" /></td>
                </tr>
            </table>

            <asp:Label ID="Lable1" runat="server" Text="" CssClass="auto-style2"></asp:Label>
        </div>
    </form>
</body>
</html>
