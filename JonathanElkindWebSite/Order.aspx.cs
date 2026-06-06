using System;

public partial class Order : System.Web.UI.Page
{
    public string stMessage = ""; // משתנה שישמור את הודעת ההצלחה

    protected void Page_Load(object sender, EventArgs e)
    {
        // הגנה: אם אורח (מי שלא מחובר) מנסה להיכנס לדף הזמנה
        if (Session["user"] == null && Session["nihol"] == null)
        {
            Response.Redirect("login.aspx"); // זורק אותו לדף התחברות
        }
        else // אם הוא כן מחובר
        {
            if (Page.IsPostBack == true) // אם הוא לחץ על הכפתור "אשר הזמנה"
            {
                // רושם לו שההזמנה בוצעה (אין פה סליקת אשראי אמיתית, זה רק לצורך הפרויקט)
                stMessage = "ההזמנה נקלטה בהצלחה ותגיע אליך בקרוב!";
            }
        }
    }
}