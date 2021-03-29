<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            width: 429px;
            height: 193px;
            position: absolute;
            top: 128px;
            left: 9px;
            z-index: 1;
        }
        .auto-style2 {
            width: 1465px;
            height: 38px;
            position: absolute;
            top: 136px;
            left: 450px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cart</h1>
            <asp:GridView ID="Cart" runat="server" AutoGenerateColumns="false" CssClass="auto-style1">
                <Columns>
                    <asp:BoundField DataField="Pname" HeaderText="Name" />
                    <asp:BoundField DataField="Seller" HeaderText="Seller" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Amout" HeaderText="Amount" />
                </Columns>
            </asp:GridView>

            <p id="pass1" runat="server" class="auto-style2">
                <a href="HomeUser.aspx">Continue to Shop</a>
                <br />
                <a href="buynow.aspx">Buy Now!</a>
            </p>
        </div>
    </form>
</body>
</html>
