using System;

public partial class Signup : System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true) // אם שלחו את הטופס
        {
            string fullName = Request.Form["fullName"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string terms = Request.Form["terms"];

            if (fullName == "" || email == "" || password == "" || terms == null) // בודק שלא רימו את הדפדפן ושחכו שדות
            {
                stResult = "נא למלא את כל השדות ולאשר תנאים.";
            }
            else
            {
                // מחפש במסד הנתונים אם האימייל תפוס
                string sqlCheck = "SELECT * FROM tUsers WHERE Gmail = '" + email + "'";
                if (MyAdoHelper.IsExist(sqlCheck)) // מפעיל את הפונקציה מהקובץ MyAdoHelper
                {
                    stResult = "האימייל כבר קיים במערכת."; // מודיע שגיאה
                }
                else // אם האימייל פנוי
                {
                    // מכין פקודה שתוסיף את המשתמש למסד
                    string sqlInsert = "INSERT INTO tUsers VALUES (N'" + fullName + "', N'" + email + "', N'" + password + "', N'" + terms + "')";
                    MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert); // מפעיל את הפקודה ומכניס את המשתמש

                    Session["user"] = "ok"; // מחבר את המשתמש אוטומטית
                    Session["name"] = fullName; // שומר את שמו
                    Response.Redirect("Default.aspx"); // זורק אותו לדף הבית
                }
            }
        }
    }
}