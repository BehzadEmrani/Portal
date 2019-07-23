<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="Portal.DeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">


    <div style="padding-top: 30px">



        <asp:Table runat="server">

<%--            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="نام"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Label10" runat="server" Text=" نام خانوادگی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                </asp:TableCell>

            </asp:TableFooterRow>--%>




            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="کدملی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtNi" runat="server"></asp:TextBox>
                </asp:TableCell>

         
            </asp:TableFooterRow>




            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Label ID="Label8" runat="server" Text="ثبت نام با موفقیت انجام شد" Visible="false"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="id" Visible="false"></asp:Label>
                </asp:TableCell>
            </asp:TableFooterRow>

        </asp:Table>

        <asp:Table ID="tb" runat="server" HorizontalAlign="Center">



            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="Editbtn" runat="server" Text="حذف" class="nbtn black" Style="text-align: center;" />
                </asp:TableCell>
            </asp:TableFooterRow>



        </asp:Table>


    </div>




</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
