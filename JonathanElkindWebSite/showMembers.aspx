<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="showMembers.aspx.cs" Inherits="showMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <!-- כותרת פשוטה לדף של המנהל -->
    <h2 style="text-align: center;">טבלת משתמשים רשומים - פאנל ניהול</h2>
    <br>

    <!-- כאן נדפיס את המשתנה מהקוד בשרת (C#) שיכיל את כל הטבלה -->
    <div style="text-align: center; direction: rtl;">
        <%= stUsers %>
    </div>
    
</asp:Content>