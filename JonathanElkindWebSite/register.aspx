<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form name="example" method="get" action="html_page13.html">
    שם פרטי : <input type="text" name="firstname">
    שם משפחה : <input type="text" name="lastname">
</form>
<input type="submit" name="submit1" value="submit">
   בן <input type="radio" name="radio1" checked>
   בת <input type="radio" name="radio1">
</asp:Content>

