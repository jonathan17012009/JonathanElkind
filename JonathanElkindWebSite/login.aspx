<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <!-- קופסה שעוטפת את כל טופס ההתחברות כדי שיהיה באמצע המסך ויקבל מסגרת -->
    <div style="background-color: white; width: 300px; padding: 20px; border: 1px solid black; margin: 0 auto; text-align: right;">
        
        <!-- כותרת העמוד -->
        <h2>התחברות</h2>
        <br>

        <%-- טופס שרת - חובה ב-ASP.NET כדי לשלוח נתונים לשרת --%>
        <form id="form1" runat="server">
            
            <!-- שימוש בטבלה רגילה כדי לסדר את השדות בצורה ישרה (מאוד נפוץ בפרויקטים בבית ספר) -->
            <table border="0">
                
                <!-- שורה ראשונה בטבלה: אימייל -->
                <tr>
                    <td>אימייל:</td>
                    <td>
                        <!-- תיבת טקסט לאימייל. שיניתי את השם ל-email במקום מספר 1 -->
                        <input type="text" name="email" id="email" />
                    </td>
                </tr>
                
                <!-- שורה שניה בטבלה: סיסמה -->
                <tr>
                    <td>סיסמה:</td>
                    <td>
                        <!-- תיבת טקסט מסוג סיסמה שמסתירה את האותיות בנקודות -->
                        <input type="password" name="password" id="password" />
                    </td>
                </tr>
                
                <!-- שורה ריקה בשביל ליצור קצת רווח לפני הכפתור -->
                <tr>
                    <td colspan="2"><br></td>
                </tr>

                <!-- שורה שלישית בטבלה: כפתור התחברות -->
                <tr>
                    <!-- קולספאן (colspan) שווה 2 אומר שהתא הזה יתפוס מקום של שתי עמודות -->
                    <td colspan="2" style="text-align: center;">
                        <%-- כפתור שרת שלחיצה עליו תפעיל את הקוד ב-C# (שיניתי את ה-ID ל-btnLogin) --%>
                        <asp:Button ID="btnLogin" runat="server" Text="הכנס" CssClass="blue-button" />
                    </td>
                </tr>
                
            </table>

        </form>
        
    </div>

</asp:Content>