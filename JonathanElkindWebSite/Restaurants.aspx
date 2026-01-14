<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="margin-bottom: 25px;">מסעדות מומלצות</h2>
    <div class="grid">
        <a href="Order.aspx" class="card">
            <img src="https://placehold.co/400x300/orange/white?text=Burger" />

            <div class="card-content"><strong>ויטרינה</strong><br>20-30 דק'</div>
        </a>
        <a href="Order.aspx" class="card">
            <img src="https://placehold.co/400x300/red/white?text=Pizza" />
            <div class="card-content"><strong>טוני וספה</strong><br>30-40 דק'</div>
        </a>
    </div>
</asp:Content>