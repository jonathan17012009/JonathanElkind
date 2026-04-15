using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // חובה להוסיף את השורה הזאת בשביל DataTable

public partial class showMembers : System.Web.UI.Page
{
    // משתנה שיכיל את קוד ה-HTML של הטבלה שנבנה מהדאטה-בייס
    public string stUsers = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה: האם מי שמנסה להיכנס הוא המנהל?
        if (Session["admin"] == null || Session["admin"].ToString() != "yes")
        {
            // אם לא מנהל - זורקים אותו לדף הבית
            Response.Redirect("Default.aspx");
        }
        else
        {
            // אם הוא מנהל - בונים את טבלת המשתמשים
            BuildUsersTable();
        }
    }

    private void BuildUsersTable()
    {
        string sql = "SELECT * FROM tUsers";

        // שליפת הנתונים לתוך טבלה זמנית בזיכרון (DataTable)
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        string tableHtml = "<table border='1' dir='rtl' class='users-grid'>";
        tableHtml += "<tr><th>שם משתמש</th><th>אימייל</th><th>סיסמה</th></tr>";

        // לולאה שעוברת שורה-שורה על הנתונים שחזרו מהמסד
        foreach (DataRow row in dt.Rows)
        {
            tableHtml += "<tr>";
            tableHtml += "<td>" + row["Username"] + "</td>";
            tableHtml += "<td>" + row["Gmail"] + "</td>";
            tableHtml += "<td>" + row["Password"] + "</td>";
            tableHtml += "</tr>";
        }

        tableHtml += "</table>";

        // השמת הטבלה המוכנה לתוך המשתנה שיוצג ב-HTML
        stUsers = tableHtml;
    }
}