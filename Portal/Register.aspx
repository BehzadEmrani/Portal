<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Portal.Register" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">

    <asp:Label ID="Label1" runat="server" Text="نام"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="کدملی"></asp:Label>
    <asp:TextBox ID="txtNi" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="سن"></asp:Label>
    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="کد پرسنلی"></asp:Label>
    <asp:TextBox ID="txtPersonId" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="شماره تلفن"></asp:Label>
    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="نام کاربری"></asp:Label>
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="کلمه عبور "></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button" runat="server" Text="ثبت" class="nbtn black" OnClick="Button_Click"/>
    <br />
    <asp:Label ID="Label8" runat="server" Text="ثبت نام با موفقیت انجام شد" Visible="false"></asp:Label>


</asp:Content>



