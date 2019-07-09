<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="FrmDropDown.aspx.cs" Inherits="Portal.FrmDropDown" Async="true" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
     <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نوع سخت افزار :</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                     <asp:DropDownList ID="ddliranganj" runat="server">
                     </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

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
                 var ddlCustomer = $("[id*=DropDownList1]");
               
                 ddlCustomers.empty().append('<option selected="selected" value="0">انتخاب کنید </option>');
                 $.each(r, function () {
                     
                     ddlCustomers.append($("<option></option>").val(this['id']).html(this['model']));

                   
                     
                     $("[id *= ddliranganj]").click(function () {
                         console.log(r.id);
                         $.ajax({

                             url: "http://localhost:50976/api/AddHardware/" + 2,
                             type: "Get",
                             // data: person,
                             success: function (result) {


                                 ddlCustomer.empty().append('<option selected="selected" value="0">انتخاب کنید </option>');
                                 $.each(result, function () {
                                     ddlCustomer.append($("<option></option>").val(this['id']).html(this['servername']));

                                 });

                             }





                         });
                     });




                 });
             }
      });
     });
     </script>


 <%--<script type="text/javascript">
     var ddlCustomers = $("[id*=DropDownList1]");
     $("[id *= ddliranganj]").click(function () {
         var person = val()
              

         

         $.ajax({
             url: "http://localhost:50976/api/AddHardware/" + person.val,
             type: "Get",
            // data: person,
             success: function (result) {



                 $.each(result, function () {
                     ddlCustomers.append($("<option></option>").val(this['id']).html(this['servername']));

                 });

             }





         });
     });
</script>--%>
             

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">


     <asp:TableRow>
                <asp:TableCell HorizontalAlign="Left" Width="50%">نوع سخت افزار :</asp:TableCell>
                <asp:TableCell HorizontalAlign="Right" Width="50%">
                     <asp:DropDownList ID="DropDownList1" runat="server">
                     </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

   

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
