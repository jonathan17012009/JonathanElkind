<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script language="javascript">
        function checkAll() {
            // מנקה את השגיאות הקודמות
            document.getElementById("fnErr").innerHTML = "";
            document.getElementById("emailErr").innerHTML = ""; // מנקה את שגיאת האימייל
            document.getElementById("passErr").innerHTML = "";

            var f = true;

            // בודק את השם
            if (checkFullName() == false)
                f = false;

            // בודק את האימייל (חדש!)
            if (checkEmail() == false)
                f = false;

            // בודק את הסיסמה 
            if (checkPassword() == false)
                f = false;

            return f;
        }

        // פעולה שבודקת אם השם תקין
        function checkFullName() {
            var name = document.getElementById("fullName").value;

            // בדיקת אורך השם
            if (name.length < 2 || name.length > 30) {
                document.getElementById("fnErr").innerHTML = "אורך השם לא תקין";
                return false;
            }

            // בדיקה האם השם מכיל מספרים (חדש!)
            if (/\d/.test(name)) {
                document.getElementById("fnErr").innerHTML = "שם מלא לא יכול להכיל מספרים";
                return false;
            }

            return true;
        }

        // פעולה שבודקת אם האימייל תקין (חדש!)
        function checkEmail() {
            var email = document.getElementById("email").value;

            // בדיקה האם קיים שטרודל באותיות
            if (email.indexOf('@') == -1) {
                document.getElementById("emailErr").innerHTML = "אימייל לא תקין (חייב להכיל @)";
                return false;
            }
            return true;
        }

        // פעולה שבודקת אם הסיסמה תקינה
        function checkPassword() {
            var pass = document.getElementById("password").value;

            if (pass.length < 4 || pass.length > 20) {
                document.getElementById("passErr").innerHTML = "הסיסמה קצרה מדי";
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div style="background-color: white; width: 450px; padding: 20px; border: 1px solid black; margin: 0 auto; text-align: right;">
        <h2>הרשמה לאתר</h2>
        <br>

        <%-- onsubmit מפעיל את ה-JavaScript לפני שהנתונים נשלחים לשרת --%>
        <form id="form1" runat="server" onsubmit="return checkAll();">
            
            <table border="0">
                <tr>
                    <td>שם מלא:</td>
                    <td>
                        <input type="text" name="fullName" id="fullName" />
                    </td>
                    <td id="fnErr" style="color: red; font-size: 14px; font-weight: bold; padding-right: 10px;"></td>
                </tr>
                
                <tr>
                    <td>אימייל:</td>
                    <td>
                        <input type="text" name="email" id="email" />
                    </td>
                    <td id="emailErr" style="color: red; font-size: 14px; font-weight: bold; padding-right: 10px;"></td>
                </tr>
                
                <tr>
                    <td>סיסמה:</td>
                    <td>
                        <input type="password" name="password" id="password" />
                    </td>
                    <td id="passErr" style="color: red; font-size: 14px; font-weight: bold; padding-right: 10px;"></td>
                </tr>

                <tr>
                    <td colspan="3"><br></td>
                </tr>

                <tr>
                    <td colspan="3">
                        <input type="checkbox" name="terms" id="terms" value="yes" /> 
                        אני מסכים לתנאי השימוש והשירות באתר
                    </td>
                </tr>

                <tr>
                    <td colspan="3"><br></td>
                </tr>

                <tr>
                    <td colspan="3" style="text-align: center;">
                        <asp:Button ID="btnSignup" runat="server" Text="צור חשבון" CssClass="blue-button" />
                    </td>
                </tr>
            </table>

        </form>
        
        <div style="text-align: center; color: red; font-weight: bold; margin-top: 15px;">
            <%= stResult %>
        </div>

    </div>
    
</asp:Content>