<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="hero">
        <h1>רעבים? הזמינו עכשיו</h1>
        <p>המסעדות הכי שוות בעיר, במשלוח מהיר עד הדלת.</p>
        <br>
        <a href="Restaurants.aspx" class="btn-primary">בואו נתחיל</a>
    </div>
    <div class="grid">
        <div class="card"><div class="card-content">🍔 המבורגר</div></div>
        <div class="card"><div class="card-content">🍕 פיצה</div></div>
        <div class="card"><div class="card-content">🍣 סושי</div></div>
    </div>
</asp:Content>