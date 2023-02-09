<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="Ecommapplication.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" Height="22px" NavigateUrl="~/categoryadd.aspx">Add  a category</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Productadd.aspx">Add a product</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Category"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="catid" HeaderText="Cat Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Product"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="proid" HeaderText="Prod Id"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Name"></asp:BoundField>
                        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="description" HeaderText="Description"></asp:BoundField>
                        <asp:BoundField DataField="status" HeaderText="Status"></asp:BoundField>
                        <asp:BoundField DataField="stock" HeaderText="Stock"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
