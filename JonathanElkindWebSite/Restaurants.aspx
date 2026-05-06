<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- כותרת העמוד עם קצת רווח למטה כדי שלא יידבק לתמונות -->
    <h2 style="margin-bottom: 25px;">מסעדות מומלצות</h2>
    
    <!-- אזור שמסדר את כל המסעדות אחת ליד השניה כמו רשת -->
    <div class="grid">
        
        <!-- מסעדה 1: ויטרינה (המבורגר) -->
        <!-- השתמשנו בתגית a כדי שכל הקוביה תהיה בעצם כפתור שלוחץ לדף ההזמנה -->
        <a href="Order.aspx" class="card">
            <!-- תמונה אמיתית של המבורגר -->
            <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=400&q=80" alt="המבורגר" />
            
            <div class="card-content">
                <strong>ויטרינה</strong><br>
                20-30 דק'
            </div>
        </a>
        
        <!-- מסעדה 2: טוני וספה (פיצה) -->
        <a href="Order.aspx" class="card">
            <!-- תמונה אמיתית של פיצה -->
            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=400&q=80" alt="פיצה" />
            
            <div class="card-content">
                <strong>טוני וספה</strong><br>
                30-40 דק'
            </div>
        </a>

        <!-- מסעדה 3: סושי (הוספתי את מה שהיה חסר) -->
        <a href="Order.aspx" class="card">
            <!-- תמונה אמיתית של סושי -->
            <img src="https://images.unsplash.com/photo-1579871494447-9811cf80d66c?auto=format&fit=crop&w=400&q=80" alt="סושי" />
            
            <div class="card-content">
                <strong>ג'פניקה</strong><br> <!-- סתם דוגמה לשם של מסעדה -->
                25-35 דק'
            </div>
        </a>
        
    </div>
</asp:Content>