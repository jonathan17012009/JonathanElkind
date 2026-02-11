<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <form runat="server" method="post">
    <div class="auth-container">
        <h2>הרשמה</h2>

        <table style="width:100%; border-collapse: collapse;">
            <tr>
                <td><label>שם מלא</label></td>
                <td><input type="text" name="fullName" id="fullName" style="width:100%" /></td>
            </tr>
            <tr>
                <td><label>אימייל</label></td>
                <td><input type="email" name="email" id="email" style="width:100%"/></td>
            </tr>
            <tr>
                <td><label>סיסמה</label></td>
                <td><input type="password" style="width:100%" name="password" id="password" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button 
                        ID="btnSignup" 
                        runat="server" 
                        Text="צור חשבון" 
                        CssClass="btn-primary" 
                        style="width: 100%;" 
                        PostBackUrl="~/SignUp.aspx" />
                </td>
            </tr>
        </table>
        <input type="checkbox" name="check1" name="checkbox" id="checkbox"> <p1>אני מסכים לתנאי השימוש והשירות באתר</p1>
        

    </div>
</form>
    <%=stResult %>
</asp:Content>

