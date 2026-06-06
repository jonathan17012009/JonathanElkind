<%-- חיבור הדף למאסטר --%>
<%@ Page Title="גלריה" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2 style="text-align: center;">גלריית המנות שלנו</h2>
    <br>
    
    <%-- אזור שממרכז את כל התמונות --%>
    <div style="text-align: center; max-width: 800px; margin: 0 auto;">
        
        <%-- שורה ראשונה של 3 תמונות --%>
        <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300" style="width: 200px; height: 150px; margin: 10px; border: 2px solid black;" alt="המבורגר" />
        <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=300" style="width: 200px; height: 150px; margin: 10px; border: 2px solid black;" alt="פיצה" />
        <img src="https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=300" style="width: 200px; height: 150px; margin: 10px; border: 2px solid black;" alt="סושי" />
        
        <br /> <%-- יורד שורה --%>
        
        <%-- שורה שנייה של 3 תמונות (ביחד זה 6 תמונות כמו שהמורה ביקש) --%>
        <img src="https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=300" style="width: 200px; height: 150px; margin: 10px; border: 2px solid black;" alt="פסטה" />
        <img src="https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=300" style="width: 200px; height: 150px; margin: 10px; border: 2px solid black;" alt="סלט" />
        <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=300" style="width: 200px; height: 150px; margin: 10px; border: 2px solid black;" alt="קינוח" />

    </div>
</asp:Content>