<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartPage.aspx.cs" Inherits="StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Matan's Ammo Store</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            width: 328px;
            height: 116px;
            position: absolute;
            top: 120px;
            left: 13px;
            z-index: 1;
        }
        .auto-style2 {
            width: 1465px;
            height: 38px;
            position: absolute;
            top: 249px;
            left: 11px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Matan's Store</h1>

            <p class="auto-style1">
                Hello! This is my store. Here you can buy or sell a lot of weapons.<br />
                This store has weapons and guns.<br />
                I hope you enjoy!<br />
                Matan.
            </p>

            <p class="auto-style2">
                <a href="reg.aspx">Register Here!</a>
                <br />
                <a href="login.aspx">Login Here!</a>
            </p>
        </div>
    </form>
</body>
</html>
