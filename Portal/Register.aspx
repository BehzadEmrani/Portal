<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Portal.Register" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">


    <div style="padding-top: 30px">



        <asp:Table runat="server">

            <asp:TableFooterRow>

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

            </asp:TableFooterRow>




            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="کدملی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtNi" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="سن"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </asp:TableCell>

            </asp:TableFooterRow>



            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="کد پرسنلی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtPersonId" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="شماره تلفن"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                </asp:TableCell>


            </asp:TableFooterRow>



            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="نام کاربری"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Label7" runat="server" Text="کلمه عبور "></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
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
                    <asp:Button ID="Button" runat="server" Text="ثبت" class="nbtn black" Style="text-align: center;" OnClick="Button_Click" />
                </asp:TableCell>
            </asp:TableFooterRow>





            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="Editbtn" runat="server" Text="حذف" class="nbtn black" Style="text-align: center;" />
                </asp:TableCell>
            </asp:TableFooterRow>



        </asp:Table>




    </div>

</asp:Content>