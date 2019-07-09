<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="FrmServer.aspx.cs" Inherits="Portal.FrmServer" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
    <asp:Panel runat="server" ID="Panel1" Width="100%" >
        <asp:Table runat="server" ID="Table1" Width="100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">تعداد:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtnumber" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام مدل:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtmodel" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">تاریخ تولید:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txttolid" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">تاریخ سفارش:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtsefaresh" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">تاریخ انقضا:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtengheza" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">پشتیبانی:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtposhtibani" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام سیستم عامل:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtos" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام رم:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtram" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام سی پی یو:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtcpu" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%"> سرعت سی پی یو:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtspeedcpu" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام هارد:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txthard" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">کارت ویدیو:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtvideocard" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">کارت صدا:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtvoisecard" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام مانیتور:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtmonitor" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
           
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Width="100%" ColumnSpan="2">                    
                     <asp:Button runat="server" ID="Button2" Text=" ثبت سرورها" width="100" OnClick="Button2_Click" class="nbtn black"></asp:Button>  
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Width="100%" ColumnSpan="2">
                     <asp:Label runat="server" ID="Label1" Text="نام کاربری یا رمز عبور نامعتبر" ForeColor="Red" Visible="false" ></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
