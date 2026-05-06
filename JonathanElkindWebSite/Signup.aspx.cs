using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    // משתנה ששומר את הודעת השגיאה שתודפס על המסך
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בודקים אם הגענו לדף אחרי שלחצו על כפתור (הטופס נשלח)
        if (Page.IsPostBack == true)
        {
            // קולטים את הנתונים מהטופס שב-HTML
            // השמות בסוגריים המרובעים חייבים להיות תואמים ל-name ב-HTML
            string fullName = Request.Form["fullName"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string terms = Request.Form["terms"]; // תיקנתי ל-terms

            // בדיקת תקינות בסיסית: מוודאים שלא השאירו שדות ריקים
            if (fullName == "" || email == "" || password == "")
            {
                stResult = "חובה למלא את כל השדות!";
            }
            else if (terms == null) // אם לא סימנו וי בצ'קבוקס, הערך שלו נהיה ריק
            {
                stResult = "חובה להסכים לתנאי השימוש!";
            }
            else
            {
                // משפט SQL שבודק אם האימייל כבר קיים בטבלה
                string sqlCheck = "SELECT * FROM tUsers WHERE Gmail = '" + email + "'";

                // מפעילים פונקציה שבודקת אם יש תוצאה במסד הנתונים (מחזירה אמת או שקר)
                bool exists = MyAdoHelper.IsExist(sqlCheck);

                // אם האימייל כבר קיים
                if (exists == true)
                {
                    stResult = "האימייל הזה כבר קיים במערכת, אנא הכנס אימייל אחר.";
                }
                else
                {
                    // אם הכל תקין, בונים משפט SQL שמוסיף את המשתמש
                    // האות N מחוץ למרכאות עוזרת למסד הנתונים לקרוא עברית בלי ג'יבריש
                    string sqlInsert = "INSERT INTO tUsers VALUES (N'" + fullName + "', N'" + email + "', N'" + password + "', N'" + terms + "')";

                    // מפעילים את פקודת ההכנסה לתוך מסד הנתונים
                    MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

                    // שומרים את המשתמש בזיכרון (סשן) כדי שייחשב מחובר מיד אחרי ההרשמה
                    Session["user"] = "ok";
                    Session["name"] = fullName;

                    // עכשיו, רק אחרי שבאמת הצלחנו להירשם, נעביר אותו לדף הבית!
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}