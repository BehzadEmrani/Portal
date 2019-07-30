<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DeletePerson.aspx.cs" Inherits="Portal.DeletePerson" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">


    <div style="padding-top: 30px; text-align: center;">


        <asp:TableFooterRow>

            <asp:TableCell>
                <asp:Label ID="lblc" runat="server" Text="کد ملی"></asp:Label>
            </asp:TableCell>

            <asp:TableCell>
                <asp:TextBox ID="txtni" runat="server"></asp:TextBox>
            </asp:TableCell>


        </asp:TableFooterRow>




        <asp:Table ID="tb" runat="server" HorizontalAlign="Center">


              <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Label ID="lbl8" runat="server" Text="پیام خودکار سیستم" Visible="false" Style="color: red"></asp:Label>
                    <br />
                </asp:TableCell>
            </asp:TableFooterRow>


            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="Editbtn" runat="server" Text="حذف"  Style="text-align: center; width: 70px; background-color: dimgray; font-size: 20px; font-family: 'B Yekan';" 
                        OnClick="Editbtn_Click" />

                    <br /> <br /> <br />
                    <a href="Register.aspx" style="text-align: center;">ورود به صفحه ثبت </a>
                    <br />
                    <a href="EditP1.aspx" class="black" style="text-align: center;">ورود به صفحه ویرایش</a>
                    <br />


                </asp:TableCell>
            </asp:TableFooterRow>
          

        </asp:Table>


    </div>


</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
