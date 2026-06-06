<%-- השורה הזו מחברת את דף הבית למאסטר החדש שלנו, בלי שום תוספות מיותרות --%>
<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<%-- מקום ריק שמור לקודים בראש הדף --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<%-- התוכן המרכזי של דף הבית --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <%-- קופסה שממרכזת את הטקסט לאמצע --%>
    <div style="text-align: center; margin-top: 50px;">
        
        <%-- כותרת ענקית בצבע כחול --%>
        <h1 style="color: #009de0; font-size: 50px;">רעבים? הזמינו עכשיו!</h1>
        
        <%-- פסקת הסבר קטנה מתחת לכותרת --%>
        <p style="font-size: 20px;">המסעדות הכי שוות בעיר, במשלוח מהיר עד הדלת.</p>
        
        <%-- יורד שתי שורות למטה בשביל הרווח --%>
        <br><br>
        
        <%-- כפתור שלוקח את המשתמש לדף המסעדות --%>
        <a href="Restaurants.aspx" class="blue-button" style="text-decoration: none; border-radius: 5px;">לצפייה במסעדות</a>
        
    </div>

</asp:Content>