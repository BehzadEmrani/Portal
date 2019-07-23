<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DeletePerson.aspx.cs" Inherits="Portal.DeletePerson" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">


     <div style="padding-top: 30px">



<%--        <asp:Table runat="server">

            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="lbln" runat="server" Text="نام"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtn" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="lblln" runat="server" Text=" نام خانوادگی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtln" runat="server"></asp:TextBox>

                </asp:TableCell>

            </asp:TableFooterRow>--%>




            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="lblc" runat="server" Text="کدملی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtni" runat="server"></asp:TextBox>
                </asp:TableCell>



            </asp:TableFooterRow>



            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Label ID="lbl8" runat="server" Text="حذف با موفقیت انجام شد" Visible="false"></asp:Label>
                    <asp:Label ID="lblt" runat="server" Text="id" Visible="false"></asp:Label>
                </asp:TableCell>
            </asp:TableFooterRow>

      

        <asp:Table ID="tb" runat="server" HorizontalAlign="Center">

            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="Editbtn" runat="server" Text="حذف" class="nbtn black" Style="text-align: center;" OnClick="Editbtn_Click" />
                </asp:TableCell>
            </asp:TableFooterRow>



        </asp:Table>


    </div>


</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
