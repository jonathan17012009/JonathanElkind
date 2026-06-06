using System;
using System.Data;

public partial class showMembers : System.Web.UI.Page
{
    public string stUsers = ""; // משתנה שיכיל את כל קוד ה-HTML של הטבלה

    protected void Page_Load(object sender, EventArgs e)
    {
        // ההגנה של הדף: אם מי שנכנס הוא לא מנהל
        if (Session["nihol"] == null || Session["nihol"].ToString() != "ok")
        {
            Response.Redirect("login.aspx"); // זורק אותו לדף ההתחברות
        }
        else // אם הוא מנהל
        {
            string sql = "SELECT * FROM tUsers"; // פקודה לשלוף את כולם

            if (Page.IsPostBack == true) // אם המנהל לחץ על חיפוש
            {
                string search = Request.Form["searchName"]; // לוקח את מה שהוא הקליד
                if (search != null && search != "")
                {
                    // משנה את הפקודה כדי שתחפש רק מי שהשם שלו מכיל את האותיות האלה
                    sql = "SELECT * FROM tUsers WHERE FullName LIKE '%" + search + "%'";
                }
            }

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql); // מביא את התוצאות מהמסד לטבלה וירטואלית

            if (dt.Rows.Count == 0) // אם לא מצאנו אף אחד
            {
                stUsers = "<h3 style='color: red;'>לא נמצאו משתמשים.</h3>";
            }
            else // אם יש אנשים ברשימה
            {
                // מתחילים לבנות את קוד הטבלה שתודפס על המסך, כולל כותרות
                string tableHtml = "<table border='1' style='margin: 0 auto; width: 80%; text-align: center; background-color: white;'>";
                tableHtml += "<tr style='background-color: #009de0; color: white;'><th>שם מלא</th><th>אימייל</th><th>סיסמה</th></tr>";

                // לולאה שעוברת על כל השורות שמצאנו
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    // מוסיפה כל משתמש לשורה חדשה בטבלה
                    tableHtml += "<tr><td>" + dt.Rows[i]["FullName"].ToString() + "</td><td>" + dt.Rows[i]["Gmail"].ToString() + "</td><td>" + dt.Rows[i]["Password"].ToString() + "</td></tr>";
                }

                tableHtml += "</table>"; // סוגר את תגית הטבלה
                stUsers = tableHtml; // מכניס את הכל למשתנה שיוצג ב-HTML
            }
        }
    }
}