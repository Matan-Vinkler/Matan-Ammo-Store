<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new_product.aspx.cs" Inherits="new_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Product</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 143px;
        }
        .auto-style2 {
            position: absolute;
            top: 297px;
            left: 12px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add New Product</h1>
            
            <table class="auto-style1">
                <tr>
                    <td>Name: </td>
                    <td><asp:TextBox ID="Name" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><asp:TextBox ID="Price" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Amount: </td>
                    <td><asp:TextBox ID="Amount" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Upload_Click" /></td>
                </tr>
            </table>

            <asp:Label ID="Lable1" runat="server" Text="" CssClass="auto-style2"></asp:Label>
        </div>
    </form>
</body>
</html>
