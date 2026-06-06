<%-- חיבור הדף למאסטר --%>
<%@ Page Title="אודות" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <%-- קופסה לטקסט האודות --%>
    <div style="background-color: white; width: 600px; margin: 0 auto; padding: 20px; border: 1px solid black; text-align: right;">
        
        <h2>אודות הפרויקט</h2>
        
        <%-- טבלה פשוטה כדי שהתמונה תהיה ליד הטקסט --%>
        <table border="0">
            <tr>
                <td style="width: 150px;">
                    <%-- התמונה של מי שבנה את האתר --%>
                    <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" alt="תמונה" style="width: 120px; border: 1px solid black;" />
                </td>
                <td style="vertical-align: top; padding-right: 20px;">
                    <%-- הפרטים של הפרויקט --%>
                    <p><strong>שם המפתח:</strong> פרויקט סיום</p>
                    <p><strong>מגמה:</strong> הנדסת תוכנה (מדעי המחשב)</p>
                    <p><strong>נושא האתר:</strong> מערכת הדמיה להזמנת אוכל ממסעדות, הכוללת רישום משתמשים ופאנל ניהול.</p>
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>