<%-- חיבור הדף למאסטר --%>
<%@ Page Title="הזמנה" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <%-- קופסה לבנה עם מסגרת בשביל ההזמנה --%>
    <div style="background-color: white; width: 400px; padding: 20px; border: 1px solid black; margin: 0 auto; text-align: right;">
        
        <h2>סיכום הזמנה</h2>
        
        <%-- טופס שרת כדי שכפתור ההזמנה יעבוד --%>
        <form id="form1" runat="server">
            
            <%-- מראה למשתמש כמה הוא צריך לשלם --%>
            <p>ארוחת המבורגר - 68.00 ש"ח</p>
            <p>משלוח - 15.00 ש"ח</p>
            <hr> <%-- עושה קו הפרדה --%>
            <h3>סה"כ לתשלום: 83.00 ש"ח</h3>
            
            <br>
            <%-- בחירת שתייה עם עיגולים לסימון (כדי להראות למורה שדות קלט שונים) --%>
            <b>בחירת שתייה:</b><br>
            <input type="radio" name="drink" value="cola" checked /> קולה <br>
            <input type="radio" name="drink" value="sprite" /> ספרייט <br>
            <input type="radio" name="drink" value="water" /> מים <br>
            
            <br><br>
            
            <%-- כפתור ששולח את ההזמנה --%>
            <div style="text-align: center;">
                <asp:Button ID="btnOrder" runat="server" Text="אשר הזמנה" CssClass="blue-button" />
            </div>
            
        </form>
        
        <%-- המקום שבו תודפס הודעה שההזמנה הצליחה --%>
        <div style="text-align: center; color: green; font-weight: bold; margin-top: 15px;">
            <%= stMessage %>
        </div>

    </div>
</asp:Content>