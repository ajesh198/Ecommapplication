<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userhome.aspx.cs" Inherits="Ecommapplication.Userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="6" RepeatDirection="Horizontal" CellSpacing="3" OnItemCommand="DataList1_ItemCommand">
        <footerstyle backcolor="#FFFFCC" forecolor="#330099" />
        <headerstyle backcolor="#990000" font-bold="True" forecolor="#FFFFCC" />
        <itemstyle backcolor="White" forecolor="#330099" />
        <itemtemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="productview" Height="136px" ImageUrl='<%# Eval("image") %>' Width="130px" />
            <br />
            <asp:Label ID="catlabel" runat="server" Text='<%# Eval("catid") %>' Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
        </itemtemplate>
        <selecteditemstyle backcolor="#FFCC66" font-bold="True" forecolor="#663399" />
    </asp:DataList>

    <div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
