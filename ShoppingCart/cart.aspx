<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppinCartMaster.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ShoppingCart.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gv1" width="400" BorderStyle="Solid" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="prodId"  OnRowDeleting="gv1_RowDeleting" FooterText="Total">
     <Columns>
            <asp:TemplateField HeaderText="ID" FooterText="Total">
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%# Eval("prodId")%>'></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Name"  ControlStyle-Font-Bold ="true">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("prodName")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Price" >
                <ItemTemplate>
                 <%# unitprice(decimal.Parse(Eval("prodPrice").ToString())) %>
                </ItemTemplate>
               <FooterTemplate >
                     <%# gettotalprice() %>
                </FooterTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
            <asp:LinkButton ID="lnlDel" CommandName="Delete" runat="server">Delete</asp:LinkButton>
                    </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="Gray" Font-Bold="true" />
      <PagerStyle BackColor="White" />
       
        <FooterStyle />
    </asp:GridView>
</asp:Content>
