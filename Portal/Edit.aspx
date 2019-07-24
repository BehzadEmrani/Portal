<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Portal.Edit" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">





    <div style="padding-top: 30px">



        <asp:table id="Table1" runat="server" horizontalalign="Center">

            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    
                    <asp:Label ID="Labeltozih" runat="server" Text="لطفا کد ملی فرد مورد نظر را وارد کنید"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBoxtozih" runat="server"></asp:TextBox> 


                </asp:TableCell>
            </asp:TableFooterRow>



        </asp:table>



        <asp:table runat="server">


          


            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Labeln" runat="server" Text="نام"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Labelln" runat="server" Text=" نام خانوادگی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>

                </asp:TableCell>

            </asp:TableFooterRow>




            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Labelni" runat="server" Text="کدملی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtni" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Labelage" runat="server" Text="سن"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                </asp:TableCell>

            </asp:TableFooterRow>



            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Labelpc" runat="server" Text="کد پرسنلی"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtpc" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Labeltn" runat="server" Text="شماره تلفن"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txttn" runat="server"></asp:TextBox>
                </asp:TableCell>


            </asp:TableFooterRow>



            <asp:TableFooterRow>

                <asp:TableCell>
                    <asp:Label ID="Labelun" runat="server" Text="نام کاربری"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtun" runat="server"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell>
                    <asp:Label ID="Labelp" runat="server" Text="کلمه عبور "></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtp" runat="server"></asp:TextBox>
                </asp:TableCell>



           

            </asp:TableFooterRow>


             <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Label ID="Labelactive" runat="server" Text=" فعال/غیر فعال "></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="Textactive" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableFooterRow>


            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Label ID="Label8" runat="server" Text="ویرایش با موفقیت انجام شد" Visible="false"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="id" Visible="false"></asp:Label>
                </asp:TableCell>
            </asp:TableFooterRow>

        </asp:table>

        <asp:table id="tb" runat="server" horizontalalign="Center">

            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="btnEdit" runat="server" Text="ویرایش" class="nbtn black" Style="text-align: center;" OnClick="btnEdit_Click"/>
                </asp:TableCell>
            </asp:TableFooterRow>



        </asp:table>



    </div>





</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
