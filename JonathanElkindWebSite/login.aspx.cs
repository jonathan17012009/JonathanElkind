using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// מחקתי את שאר הספריות המיותרות כדי שהקוד ייראה בסיסי ונקי

public partial class login : System.Web.UI.Page
{
    // משתנה גלובלי שישמור את הודעת השגיאה למשתמש
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בודקים האם הגענו לדף אחרי שלחצו על כפתור (הטופס נשלח)
        if (Page.IsPostBack == true)
        {
            // התיקון של הבאג: עכשיו אנחנו מושכים את הנתונים לפי השמות המעודכנים ששמנו ב-HTML
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            // בודקים אם מי שניסה להתחבר זה המנהל
            if (email == "JonathanMenahel@gmail.com" && password == "menahel12345")
            {
                // שומרים בסשן (זיכרון השרת) שזה המנהל כדי שנוכל להשתמש בזה בדפים אחרים
                Session["nihol"] = "ok";
                Session["name"] = "יהונתן מנהל";

                // בגלל שתיקנתי את השמות למעלה, עכשיו הקוד ייכנס לכאן ויעביר אותך לדף המנהלים
                Response.Redirect("showMembers.aspx");
            }
            else
            {
                // אם זה לא המנהל, נחפש את המשתמש במסד הנתונים
                // משפט SQL פשוט שמחפש משתמש עם האימייל והסיסמה שהוזנו
                string sqlSelect = "SELECT * FROM tUsers WHERE Gmail = '" + email + "' AND Password = '" + password + "'";

                // מפעילים את הפקודה בעזרת מחלקת העזר ומכניסים את התוצאה לטבלה
                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                // בודקים אם הטבלה חזרה ריקה (כלומר אין משתמש כזה)
                if (dt.Rows.Count == 0)
                {
                    // במקום לכתוב סתם "אין נתונים", עדיף לכתוב הודעה ברורה
                    stResult = "שם משתמש או סיסמה שגויים";
                }
                else
                {
                    // אם כן מצאנו את המשתמש במסד הנתונים
                    Session["user"] = "ok";
                    // לוקחים את השם הפרטי שלו (fn) מהשורה הראשונה בטבלה שחזרה
                    Session["name"] = dt.Rows[0]["fn"];

                    // מעבירים אותו לדף הבית של האתר
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}