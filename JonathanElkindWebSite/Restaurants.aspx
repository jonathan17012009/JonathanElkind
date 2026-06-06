<%-- חיבור הדף למאסטר --%>
<%@ Page Title="מסעדות" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Restaurants.aspx.cs" Inherits="Restaurants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <%-- כותרת הדף --%>
    <h2 style="text-align: center;">מסעדות מומלצות</h2>
    <br>

    <%-- אזור שממרכז את המסעדות שנוסיף --%>
    <div style="text-align: center;">
        
        <%-- קופסה שמייצגת מסעדה אחת (המבורגר) --%>
        <div style="display: inline-block; width: 200px; border: 1px solid gray; padding: 10px; margin: 10px; background-color: white;">
            <%-- התמונה של המסעדה --%>
            <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300" style="width: 100%; height: 120px;" alt="המבורגר" />
            <%-- השם של המסעדה --%>
            <h3>ויטרינה</h3>
            <%-- כפתור הזמנה שלוקח לדף ההזמנות --%>
            <a href="Order.aspx" class="blue-button" style="text-decoration: none; padding: 5px 10px;">הזמן עכשיו</a>
        </div>

        <%-- קופסה שמייצגת מסעדה שנייה (פיצה) --%>
        <div style="display: inline-block; width: 200px; border: 1px solid gray; padding: 10px; margin: 10px; background-color: white;">
            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=300" style="width: 100%; height: 120px;" alt="פיצה" />
            <h3>טוני וספה</h3>
            <a href="Order.aspx" class="blue-button" style="text-decoration: none; padding: 5px 10px;">הזמן עכשיו</a>
        </div>

    </div>
</asp:Content>