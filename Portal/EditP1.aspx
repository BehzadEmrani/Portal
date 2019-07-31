<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="EditP1.aspx.cs" Inherits="Portal.EditP1" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">




    <div style="padding-top: 30px">



        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">

            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">

                    <asp:Label ID="Labeltozih" runat="server" Text="لطفا کد ملی فرد مورد نظر را وارد کنید"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="OldNI" runat="server"></asp:TextBox>


                </asp:TableCell>
            </asp:TableFooterRow>



        </asp:Table>



        <asp:Table runat="server">





            <asp:TableFooterRow>

                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labeln" runat="server" Text="نام" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtname" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labelln" runat="server" Text=" نام خانوادگی" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtlname" runat="server" Visible="false"></asp:TextBox>

                </asp:TableCell>

            </asp:TableFooterRow>




            <asp:TableFooterRow>

                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labelni" runat="server" Text="کد ملی" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtni" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labelage" runat="server" Text="سن" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtage" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>

            </asp:TableFooterRow>



            <asp:TableFooterRow>

                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labelpc" runat="server" Text="کد پرسنلی" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtpc" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labeltn" runat="server" Text="شماره تلفن" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txttn" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>


            </asp:TableFooterRow>



            <asp:TableFooterRow>

                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labelun" runat="server" Text="نام کاربری" Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtun" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>


                <asp:TableCell Width="10px"></asp:TableCell>


                <asp:TableCell Style="direction: ltr">
                    <asp:Label ID="Labelp" runat="server" Text="کلمه عبور " Visible="false"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="txtp" runat="server" Visible="false"></asp:TextBox>
                </asp:TableCell>





            </asp:TableFooterRow>


            <asp:TableFooterRow>

                <asp:TableCell HorizontalAlign="Center">


                   <%-- <asp:RadioButtonList ID="RDB1" runat="server" Visible="false" RepeatDirection="Horizontal">


                        <asp:ListItem Text="فعال" Value="1"></asp:ListItem>
                        <asp:ListItem Text="غیر فعال" Value="0"></asp:ListItem>

                    </asp:RadioButtonList>--%>

                    <asp:Label runat="server" ID="Mylabel" Visible="false"></asp:Label>


                </asp:TableCell>
            </asp:TableFooterRow>


            <asp:TableFooterRow>
                <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableFooterRow>

        </asp:Table>



        <asp:Table runat="server" HorizontalAlign="Center">


            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Label ID="Label8" runat="server" Text="پیام خودکار سیستم" Visible="false" Style="color: red"></asp:Label>
                    <br />
                </asp:TableCell>
            </asp:TableFooterRow>


            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">


                     <asp:RadioButtonList ID="RDB1" runat="server" Visible="false" RepeatDirection="Horizontal">


                        <asp:ListItem Text="فعال" Value="1"></asp:ListItem>
                        <asp:ListItem Text="غیر فعال" Value="0"></asp:ListItem>

                    </asp:RadioButtonList>

                    <asp:Button ID="btnEdit" runat="server" Text="ثبت" Style="text-align: center; width: 70px; background-color: dimgray; font-size: 20px; font-family: 'B Yekan';"
                        OnClick="btnEdit_Click" />



                </asp:TableCell>
            </asp:TableFooterRow>




            <asp:TableFooterRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="btnreg" runat="server" Text="ویرایش" Style="text-align: center; width: 70px; background-color: dimgray; font-size: 20px; font-family: 'B Yekan';"
                        OnClick="btnreg_Click" Visible="false" />

                    <br />
                    <br />
                    <br />
                    <a href="Register.aspx">ورود به صفحه ثبت</a>
                    <br />
                    <a href="DeletePerson.aspx">ورود به صفحه حذف </a>
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
