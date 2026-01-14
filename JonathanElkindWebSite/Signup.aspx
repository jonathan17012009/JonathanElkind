<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server" method="post">
    <div class="auth-container">
        <h2>הרשמה</h2>

        <table style="width:100%; border-collapse: collapse;">
            <tr>
                <td><label>שם מלא</label></td>
                <td><input type="text" name="AAA" id="AAA" style="width:100%" /></td>
            </tr>
            <tr>
                <td><label>אימייל</label></td>
                <td><input type="email" style="width:100%"/></td>
            </tr>
            <tr>
                <td><label>סיסמה</label></td>
                <td><input type="password" style="width:100%" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button 
                        ID="btnSignup" 
                        runat="server" 
                        Text="צור חשבון" 
                        CssClass="btn-primary" 
                        style="width: 100%;" 
                        PostBackUrl="~/Default.aspx" />
                </td>
            </tr>
        </table>
        <input type="checkbox" name="check1"> <p1>אני מסכים לתנאי השימוש והשירות באתר</p1>
        

    </div>
</form>

</asp:Content>