<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeUser.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Matan's Ammo Store</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 138px;
        }
        .auto-style2 {
            width: 1490px;
            height: 26px;
            position: absolute;
            top: 38px;
            left: 13px;
            z-index: 1;
        }
        .auto-style3 {
            width: 1490px;
            height: 20px;
            position: absolute;
            top: 68px;
            left: 11px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Matan's Store</h1>
            
            <h2 id="Welcome" runat="server" class="auto-style2"></h2>
            <h3 class="auto-style3"><a href="new_product.aspx">Sell a Procuct</a></h3>

            <asp:GridView ID="StoreTable" runat="server" AutoGenerateColumns="false" CssClass="auto-style1">
                <Columns>
                    <asp:HyperLinkField DataTextField="Pname" DataNavigateUrlFields="pname" DataNavigateUrlFormatString="cart.aspx?pname={0}" HeaderText="Name" />
                    <asp:BoundField DataField="Seller" HeaderText="Seller" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Amout" HeaderText="Amount" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
