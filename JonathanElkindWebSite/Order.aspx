<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="order-summary">
        <form runat="server" method="post">
        <h2>סיכום הזמנה</h2>
        <div class="order-item"><span>המבורגר</span><span>₪68.00</span></div>
        <div class="order-item"><span>משלוח</span><span>₪15.00</span></div>
        <div style="font-weight:bold; margin-top:15px;">סה"כ: ₪83.00</div>
        <p1>שתייה לבחירה</p1><br/>
        <input type="radio" name="radio1" checked> <p1>קולה</p1>
        <input type="radio" name="radio1"> <p1>פאנטה</p1>
        <input type="radio" name="radio1"> <p1>ספרייט</p1>
        <input type="radio" name="radio1"> <p1>סודה</p1>
        <asp:Button ID="btnPay" runat="server" Text="לתשלום" CssClass="btn-primary" style="width:100%; margin-top:20px;" OnClientClick="alert('תודה!'); return false;" />
            </form>
    </div>
</asp:Content>