<%-- השורה שמחברת את דף ההרשמה למאסטר ולקוד שלו --%>
<%@ Page Title="הרשמה" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<%-- פה אנחנו שמים את בדיקות התקינות (ג'אווה-סקריפט) --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">
        // פונקציה שבודקת שהכל תקין לפני שהטופס נשלח
        function checkAll() {
            var f = true; // נניח שהכל תקין
            var name = document.getElementById("fullName").value; // שומר את השם
            var email = document.getElementById("email").value; // שומר אימייל
            var pass = document.getElementById("password").value; // שומר סיסמה

            document.getElementById("err").innerHTML = ""; // מנקה שגיאות קודמות

            // בודק אורך שם או אם יש בו מספרים
            if (name.length < 2 || /\d/.test(name)) { document.getElementById("err").innerHTML = "שם לא תקין"; f = false; }
            // בודק אם יש @ באימייל
            else if (email.length < 5 || email.indexOf('@') == -1) { document.getElementById("err").innerHTML = "אימייל לא תקין"; f = false; }
            // בודק אורך סיסמה
            else if (pass.length < 6) { document.getElementById("err").innerHTML = "סיסמה קצרה מדי"; f = false; }

            return f; // מחזיר אמת (שולח) או שקר (עוצר)
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="background-color: white; width: 400px; padding: 20px; border: 1px solid black; margin: 0 auto; text-align: right;">
        
        <h2>הרשמה</h2><br>
        
        <%-- טופס שקורא לבדיקות ה-JS כשלומצים שלח --%>
        <form id="form1" runat="server" onsubmit="return checkAll();">
            <table border="0">
                <tr><td>שם מלא:</td><td><input type="text" name="fullName" id="fullName" /></td></tr>
                <tr><td>אימייל:</td><td><input type="text" name="email" id="email" /></td></tr>
                <tr><td>סיסמה:</td><td><input type="password" name="password" id="password" /></td></tr>
                <tr><td colspan="2"><input type="checkbox" name="terms" value="yes" /> אני מסכים לתנאים</td></tr>
                
                <%-- המקום שבו ג'אווה-סקריפט מדפיס שגיאות --%>
                <tr><td colspan="2" id="err" style="color: red; font-weight: bold;"></td></tr>
                
                <tr><td colspan="2" style="text-align: center;"><br><asp:Button ID="btnSignup" runat="server" Text="הרשם" CssClass="blue-button" /></td></tr>
            </table>
        </form>
        
        <%-- המקום שבו השרת (C#) מדפיס שגיאות --%>
        <div style="text-align: center; color: red; font-weight: bold; margin-top: 15px;"><%= stResult %></div>
        
    </div>
</asp:Content>