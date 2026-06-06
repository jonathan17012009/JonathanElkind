using System; // ייבוא ספריות מערכת בסיסיות
using System.Data; // ייבוא ספריית ניהול טבלאות נתונים
using System.Data.SqlClient; // ייבוא ספריית התקשורת עם מסד נתונים SQL
using System.Web; // ייבוא ספריית האינטרנט של ASP.NET

public class MyAdoHelper
{
    // פונקציה שיוצרת את החיבור למסד הנתונים
    public static SqlConnection ConnectToDb(string fileName)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/") + fileName; // מוצאת את הכתובת הפיזית של קובץ ה-MDF
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True"; // בונה את מחרוזת החיבור
        SqlConnection conn = new SqlConnection(connString); // יוצרת אובייקט חיבור
        return conn; // מחזירה את החיבור המוכן
    }

    // פונקציה לביצוע פקודות SQL (הוספה/עדכון)
    public static void DoQuery(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName); // פותחת חיבור
        conn.Open(); // פותחת את הערוץ למסד
        SqlCommand com = new SqlCommand(sql, conn); // מכינה את פקודת ה-SQL
        com.ExecuteNonQuery(); // מריצה את הפקודה
        conn.Close(); // סוגרת את החיבור
    }

    // פונקציה שבודקת האם ערך מסוים כבר קיים (למשל בהרשמה)
    public static bool IsExist(string sql)
    {
        SqlConnection conn = ConnectToDb("MyDB.mdf"); // מתחברת למסד
        conn.Open(); // פותחת ערוץ
        SqlCommand com = new SqlCommand(sql, conn); // מכינה שאילתה
        SqlDataReader data = com.ExecuteReader(); // קוראת נתונים
        bool found = data.HasRows; // בודקת אם חזרו שורות מהשאילתה
        conn.Close(); // סוגרת ערוץ
        return found; // מחזירה אמת או שקר
    }

    // פונקציה לשליפת טבלה של נתונים (למשל להצגת המשתמשים למנהל)
    public static DataTable ExecuteDataTable(string sql)
    {
        SqlConnection conn = ConnectToDb("MyDB.mdf"); // מתחברת למסד
        conn.Open(); // פותחת ערוץ
        SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn); // מגדירה מתאם נתונים
        DataTable dt = new DataTable(); // יוצרת טבלה ריקה בזיכרון
        tableAdapter.Fill(dt); // ממלאת את הטבלה בתוצאות
        return dt; // מחזירה את הטבלה המלאה
    }
}