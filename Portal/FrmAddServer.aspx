<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="FrmAddServer.aspx.cs" Inherits="Portal.FrmAddServer" Async="true" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
 
     <asp:Panel runat="server" ID="Panel1" Width="100%" >
        <asp:Table runat="server" ID="Table1" Width="100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نام سرویس:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtservername" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">موقعیت:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtlocation" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">شماره سرور:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtserverrole" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">شماره اموال:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtserialnamber" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">شماره برچسب:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtassesttagnumber" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">تاریخ تولید:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtdatepurchased" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">تاریخ سفارش:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txtpurchaseorder" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">سیستم پشتیبان:</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                    <asp:TextBox runat="server" ID="txttechsuport" Width="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نوع سخت افزار :</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                     <asp:DropDownList ID="ddliranganj" runat="server">
                     </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" Width="100%" ColumnSpan="2">                    
                     <asp:Button runat="server" ID="Button2" Text=" ثبت سرورها" width="100" class="nbtn black" OnClick="Button2_Click"></asp:Button>  
                </asp:TableCell>
            </asp:TableRow>
           
        </asp:Table>
    </asp:Panel>

    
                
          

    
 <script type="text/javascript">
     $(function () {
         $.ajax({
             type: "Get",
             url: "http://localhost:50976/api/AddServer/",
             //data: '{}',
             //contentType: "application/json; charset=utf-8",
             //dataType: "json",
             success: function (r) {
                 var ddlCustomers = $("[id*=ddliranganj]");
                 ddlCustomers.empty().append('<option selected="selected" value="0">انتخاب کنید </option>');
                 $.each(r, function () {
                     ddlCustomers.append($("<option></option>").val(this['id']).html(this['model']));
                 });
             }
         });
     });
</script>
                           
      

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">

                 


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
