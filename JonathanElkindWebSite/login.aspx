<%-- השורה הזו מחברת את הדף למאסטר ולמדריך השרת שלו (login.aspx.cs) בלי שום תוספות מיותרות --%>
<%@ Page Title="התחברות" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%-- פה אנחנו לא מוסיפים כלום לראש הדף --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<%-- פה מתחיל התוכן שיוצג באמצע המסך --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <%-- קופסה לבנה עם מסגרת בשביל טופס ההתחברות --%>
    <div style="background-color: white; width: 300px; padding: 20px; border: 1px solid black; margin: 0 auto; text-align: right;">
        
        <h2>התחברות</h2><br>
        
        <%-- טופס שרת כדי שכפתור ההתחברות יעבוד --%>
        <form id="form1" runat="server">
            <table border="0">
                <%-- שורה לאימייל --%>
                <tr><td>אימייל:</td><td><input type="text" name="email" id="email" /></td></tr>
                
                <%-- שורה לסיסמה (מוסתרת בנקודות) --%>
                <tr><td>סיסמה:</td><td><input type="password" name="password" id="password" /></td></tr>
                
                <tr><td colspan="2"><br></td></tr>
                
                <%-- הכפתור ששולח את הנתונים לבדיקה בשרת --%>
                <tr><td colspan="2" style="text-align: center;"><asp:Button ID="btnLogin" runat="server" Text="הכנס" CssClass="blue-button" /></td></tr>
            </table>
        </form>
        
        <%-- המקום שבו תודפס הודעת שגיאה (כמו "סיסמה שגויה") אם צריך --%>
        <div style="text-align: center; color: red; font-weight: bold; margin-top: 15px;"><%= stResult %></div>
        
    </div>
</asp:Content>