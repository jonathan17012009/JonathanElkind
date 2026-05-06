<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- קופסה פשוטה שעוטפת את כל ההזמנה עם קצת עיצוב בסיסי בשורה עצמה -->
    <div style="background-color: white; width: 400px; padding: 20px; border: 1px solid black; margin: 0 auto;">
        
        <%-- טופס שרת - חובה ב-ASP.NET כדי שכפתורים ופקדים יעבדו --%>
        <form id="form1" runat="server">
            
            <!-- כותרת ראשית של הקופסה -->
            <h2>סיכום הזמנה</h2>
            
            <!-- פריטי ההזמנה כתובים פשוט כטקסט עם ירידת שורה -->
            <p>המבורגר - 68.00 ש"ח</p>
            <p>משלוח - 15.00 ש"ח</p>
            
            <!-- קו מפריד פשוט כמו שלומדים בהתחלה -->
            <hr>
            
            <!-- סכום כולל מודגש -->
            <h3>סה"כ: 83.00 ש"ח</h3>
            
            <!-- הרבה ירידות שורה כדי לעשות רווח -->
            <br><br>
            
            <!-- בחירת שתייה מודגשת -->
            <b>שתייה לבחירה:</b><br><br>
            
            <!-- כפתורי רדיו לבחירת שתייה -->
            <!-- חשוב שכל ה-name יהיו זהים (drink) כדי שאפשר יהיה לבחור רק אחד -->
            <input type="radio" name="drink" value="cola" checked> קולה <br>
            <input type="radio" name="drink" value="fanta"> פאנטה <br>
            <input type="radio" name="drink" value="sprite"> ספרייט <br>
            <input type="radio" name="drink" value="soda"> סודה <br>
            
            <br><br>
            
            <%-- כפתור של ASP.NET שמקפיץ הודעה חמודה למשתמש כשהוא לוחץ עליו --%>
            <asp:Button ID="btnPay" runat="server" Text="לתשלום" CssClass="blue-button" OnClientClick="alert('תודה על ההזמנה!'); return false;" />
            
        </form>
        
    </div>
    
</asp:Content>