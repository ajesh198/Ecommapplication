<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Ecommapplication.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="Registeration Form"></asp:Label>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametxt" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="agetxt" runat="server" TextMode="Number"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="agetxt" ErrorMessage="Age must 18 above" MaximumValue="99" MinimumValue="18"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="adresstxt" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adresstxt" ErrorMessage="Adress is Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="phonetxt" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phonetxt" ErrorMessage="invalid phone number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailtxt" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:DropDownList ID="statedrop" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Tamil Nadhu</asp:ListItem>
                <asp:ListItem>karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label7" runat="server" Text="Pincode"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="pintxt" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pintxt" ErrorMessage="pincode is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label8" runat="server" Text="Photo"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="photo is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="usertxt" ErrorMessage="username is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="cpasstxt" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passtxt" ControlToValidate="cpasstxt" ErrorMessage="password mismatch"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" BackColor="Green" ForeColor="White" Text="Register" OnClick="Button1_Click" />
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="msglab" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/adminregister.aspx">Register as admin</asp:HyperLink>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
