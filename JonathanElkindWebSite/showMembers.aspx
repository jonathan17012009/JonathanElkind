<%-- שורת החיבור של דף הניהול --%>
<%@ Page Title="ניהול" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="showMembers.aspx.cs" Inherits="showMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 style="text-align: center;">ניהול משתמשים</h2>
    
    <%-- אזור לחיפוש משתמשים לפי שם --%>
    <div style="text-align: center; margin-bottom: 20px;">
        <form id="form1" runat="server">
            חיפוש לפי שם: <input type="text" name="searchName" />
            <asp:Button ID="btnSearch" runat="server" Text="חפש" CssClass="blue-button" />
            <a href="showMembers.aspx">נקה חיפוש</a>
        </form>
    </div>
    
    <%-- המקום אליו תישפך הטבלה של כל המשתמשים שהשרת יבנה --%>
    <div style="text-align: center; direction: rtl;"><%= stUsers %></div>
    
</asp:Content>