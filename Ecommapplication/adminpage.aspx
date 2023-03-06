<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="Ecommapplication.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 393px;
        }
        .auto-style2 {
            width: 393px;
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" Height="22px" NavigateUrl="~/categoryadd.aspx">Add  a category</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Productadd.aspx">Add a product</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Category"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Product"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="proid" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="proid" HeaderText="Prod Id"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Name"></asp:BoundField>
                        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="description" HeaderText="Description"></asp:BoundField>
                        <asp:BoundField DataField="status" HeaderText="Status"></asp:BoundField>
                        <asp:BoundField DataField="stock" HeaderText="Stock"></asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True">
                        <ControlStyle ForeColor="Red" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True">
                        <ControlStyle BackColor="Green" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
