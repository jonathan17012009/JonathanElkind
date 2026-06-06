using System;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) // ברגע שהדף הזה נטען
    {
        Session.Clear(); // פקודה שמוחקת את כל מה ששמור בזיכרון של ההתחברות (את השם, ואת זה שהוא מחובר)
        Session.Abandon(); // הורסת את הסשן לגמרי כדי להיות בטוחים

        Response.Redirect("Default.aspx"); // זורקת את המשתמש מיד חזרה לדף הבית בתור אורח
    }
}