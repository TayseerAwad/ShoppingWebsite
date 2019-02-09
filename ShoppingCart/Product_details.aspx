<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppinCartMaster.Master" AutoEventWireup="true" CodeBehind="Product_details.aspx.cs" Inherits="ShoppingCart.Product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link type="text/css" rel="stylesheet" href="style.css" />
    
    <table cellspacing="13" style="width: 75%">
        <tr class="tr">
            <td>
                <asp:Label ID="lbl1" runat="server" Text="Device Name" CssClass="td"></asp:Label></td>
            <td>
                <asp:Label ID="LblName" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr class="tr">
            <td class="td">
                <asp:Label ID="lbl2" runat="server" Text="Device Description"></asp:Label></td>
            <td>
                <asp:Label ID="LblDescription" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr class="tr">
            <td class="td">
                <asp:Label ID="lbl3" runat="server" Text="Device Price"></asp:Label></td>
            <td>
                <asp:Label ID="LblPrice" runat="server" Text="Label"></asp:Label></td>
        </tr>

    </table>
    <br />
    <br />
   
    <asp:LinkButton ID="lnkAdd" runat="server" OnClick="lnkAdd_Click">Add to the shopping cart</asp:LinkButton>

<br />
    <br />
    <a href="https://www.dixipay.com/order_api/?button_request=Y&amp;recipient_account=201000011500&amp;currency=USD&amp;amount=50&amp;product=%D9%83%D9%88%D8%B1%D8%B3+%D8%B5%D9%86%D8%A7%D8%B9%D8%A9+%D8%A7%D9%84%D9%88%D9%8A%D8%A8" target="_blank"><img src="http://www.dixipay.com/cabinet/images/banners/182_button_5_1.png" alt="كورس صناعة الويب" border="0" width="182" height="80" /></a>
    



</asp:Content>
