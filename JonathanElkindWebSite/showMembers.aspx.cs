using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showMembers : System.Web.UI.Page
{
    public string stUsers = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה שהמנהל מחובר
        if (Session["nihol"] == null || Session["nihol"].ToString() != "ok")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string sql = "SELECT * FROM tUsers";
            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            string tableHtml = "<table border='1' style='margin: 0 auto; width: 80%; text-align: center; background-color: white;'>";

            tableHtml += "<tr style='background-color: #009de0; color: white;'>";
            tableHtml += "<th>שם מלא</th>";
            tableHtml += "<th>אימייל</th>";
            tableHtml += "<th>סיסמה</th>";
            tableHtml += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                tableHtml += "<tr>";

                // התיקון כאן: שימוש בשמות המדויקים מהתמונה ששלחת!
                tableHtml += "<td>" + dt.Rows[i]["FullName"].ToString() + "</td>";
                tableHtml += "<td>" + dt.Rows[i]["Gmail"].ToString() + "</td>";
                tableHtml += "<td>" + dt.Rows[i]["Password"].ToString() + "</td>";

                tableHtml += "</tr>";
            }

            tableHtml += "</table>";
            stUsers = tableHtml;
        }
    }
}