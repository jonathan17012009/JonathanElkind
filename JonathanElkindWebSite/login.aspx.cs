using System; // קוד בסיסי של המחשב
using System.Data; // קוד לעבודה עם טבלאות נתונים

public partial class login : System.Web.UI.Page // המחלקה של דף ההתחברות (בלי Namespace)
{
    public string stResult = ""; // משתנה שישמור את הודעת השגיאה

    protected void Page_Load(object sender, EventArgs e) // פעולה שרצה כשהדף עולה
    {
        if (Page.IsPostBack == true) // בודק אם לחצו על כפתור 'הכנס'
        {
            string email = Request.Form["email"]; // לוקח את האימייל שהוקלד
            string password = Request.Form["password"]; // לוקח את הסיסמה שהוקלדה

            if (email == "Admin@gmail.com" && password == "admin123") // בדיקה אם זה המנהל
            {
                Session["nihol"] = "ok"; // שומר בזיכרון שזה מנהל
                Session["name"] = "מנהל מערכת"; // שומר את השם
                Response.Redirect("showMembers.aspx"); // מעביר לדף ניהול
            }
            else // אם זה לא המנהל, נבדוק אם זה משתמש רגיל במסד הנתונים
            {
                // מחפש במסד הנתונים את האימייל והסיסמה האלה
                string sqlSelect = "SELECT * FROM tUsers WHERE Gmail = '" + email + "' AND Password = '" + password + "'";
                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect); // מפעיל את החיפוש ומכניס לטבלה

                if (dt.Rows.Count == 0) // אם הטבלה ריקה, סימן שהפרטים שגויים
                {
                    stResult = "שם משתמש או סיסמה שגויים";
                }
                else // אם נמצא משתמש
                {
                    Session["user"] = "ok"; // שומר בזיכרון שזה משתמש רגיל מחובר
                    Session["name"] = dt.Rows[0]["FullName"].ToString(); // לוקח את השם שלו ממסד הנתונים
                    Response.Redirect("Default.aspx"); // מעביר אותו לדף הבית
                }
            }
        }
    }
}