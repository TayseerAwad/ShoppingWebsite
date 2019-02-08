<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppinCartMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ShoppingCart.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <img src="images/line2r.jpg" alt="" width="651" height="1" class="line2r" />
    <a class="text3"><strong>المنتجات</strong></a>
   <asp:DataList ID="dtProducts" runat="server" RepeatDirection="Vertical" RepeatColumns="4">
            <ItemTemplate>
                <div class="item border">
                    <h5><%# Eval("prod_name")%></h5>
                    <div>
                    <a href=<%# "Product_details.aspx?id=" +Eval("prod_id")%>>
                   <img src='<%#"/img/"+Eval("prod_imag") %>' alt="" width="93" height="125" /></a>
                    </div>
                  <p><a href=<%# "Product_details.aspx?id=" +Eval("prod_id")%> class="details">more details</a></p>
                    </div>
                </ItemTemplate>
   </asp:DataList>
</asp:Content>
