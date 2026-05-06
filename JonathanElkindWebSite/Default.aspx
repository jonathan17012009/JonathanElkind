<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>

<%-- פה אנחנו מגדירים שהתוכן שלנו ייכנס לתוך תבנית העיצוב הכללית של האתר (ה-Master Page) --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- אזור הכותרת הראשית של העמוד -->
    <div class="main-title-area">
        
        <!-- כותרת גדולה -->
        <h1>רעבים? הזמינו עכשיו</h1>
        
        <!-- טקסט רגיל מתחת לכותרת -->
        <p>המסעדות הכי שוות בעיר, במשלוח מהיר עד הדלת.</p>
        
        <!-- ירידת שורה כדי לעשות קצת רווח -->
        <br>
        
        <!-- קישור שמוביל לדף המסעדות ומעוצב כמו כפתור -->
        <a href="Restaurants.aspx" class="button-start">בואו נתחיל</a>
        
    </div>

    <!-- אזור שמכיל את קוביות סוגי האוכל (קטגוריות) -->
    <div class="categories-area">
        
        <!-- קוביה ראשונה: המבורגר -->
        <div class="food-box">
            <div class="box-text">🍔 המבורגר</div>
        </div>
        
        <!-- קוביה שניה: פיצה -->
        <div class="food-box">
            <div class="box-text">🍕 פיצה</div>
        </div>
        
        <!-- קוביה שלישית: סושי -->
        <div class="food-box">
            <div class="box-text">🍣 סושי</div>
        </div>
        
    </div>

</asp:Content>