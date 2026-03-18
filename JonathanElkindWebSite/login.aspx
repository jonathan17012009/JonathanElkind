<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="auth-container">
        <h2>התחברות</h2>
            <form runat="server" method="post">
    <div class="auth-container">

        <table style="width:100%; border-collapse: collapse;">
            <tr>
                <td><label>אימייל</label></td>
                <td><input type="email" name="1" style="width:100%"/></td>
            </tr>
            <tr>
                <td><label>סיסמה</label></td>
                <td><input type="password" name="2" style="width:100%" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button 
                        ID="btnSignup" 
                        runat="server" 
                        Text="התחברות" 
                        CssClass="btn-primary" 
                        style="width: 100%;" 
                        PostBackUrl="~/login.aspx" />
                </td>
            </tr>
        </table>

    </div>
</form>
    </div>
</asp:Content>

