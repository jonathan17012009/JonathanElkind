using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fullName = Request.Form["fullName"]; //aspx:name
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string checkbox = Request.Form["checkbox"];



            /*
            //האם המשתמש קיים?
            //לפי אימייל
            //אם לא קיים
            //עושים ISERTR
            //ובמקום לכתוב נרשמת בהצלחה
            //Response.Redirect("login.aspx");
            //אם קיים
            //stResult="המשתמש קיים"
            */

            string sqlInsert =
                    "INSERT INTO tUsers " +
                    "VALUES (" +
                    "N'" + fullName + "'," +     // <--- N לפני המחרוזת
                     "N'" + email + "'," +     // <--- N לפני המחרוזת
                      "N'" + password + "'," +     // <--- N לפני המחרוזת
                    "N'" + checkbox + "'" +
                    ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            stResult = "נרשמת בהצלחה!";
        }
    }
}