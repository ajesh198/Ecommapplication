<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productview.aspx.cs" Inherits="Ecommapplication.productview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="detailview" Height="171px" ImageUrl='<%# Eval("image") %>' Width="181px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<asp:Label ID="Label4" runat="server" Text='Price: '></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("proid") %>' Visible="False"></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
