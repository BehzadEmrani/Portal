<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Portal.Home" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
     <iframe  runat="server" ID="Iframe2" width="100%" height="170" style="border:none" src="img/accountlogin-icon.png"></iframe>
     <asp:Panel runat="server" ID="Panel1" Width="100%" >
        <asp:Table runat="server" ID="Table1" Width="100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام کاربری:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="Text1" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">رمز عبور:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                     <asp:TextBox runat="server" ID="Text2" Width="100" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Width="100%" ColumnSpan="2">
                     <asp:Button runat="server" ID="Button1" Text="ورود" width="100" OnClick="Button1_Click" class="nbtn black"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Width="100%" ColumnSpan="2">
                     <asp:Label runat="server" ID="Label1" Text="نام کاربری یا رمز عبور نامعتبر" ForeColor="Red" Visible="false" ></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel2" Width="100%" Visible="false">
<asp:Menu runat="server" ID="Menu1" Orientation="Vertical" Height="50"  >
    
    <Items>
        <asp:MenuItem Text="سرورها" Value="0"  >
        <asp:MenuItem Text="سایت ها و برنامه ها" Value="0" ></asp:MenuItem>
        <asp:MenuItem Text="وظایف" Value="0" >
        </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="سایت ها و برنامه ها" Value="0" ></asp:MenuItem>
        <asp:MenuItem Text="وظایف" Value="0" >
        </asp:MenuItem>
    </Items>
</asp:Menu>

    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">
    <iframe  runat="server" ID="Iframe1" width="100%" style="border:none; align-content:center" height="700" ></iframe>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
