using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{


    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string email = Request.Form["1"];
            string password = Request.Form["2"];

            if (email == "JonathanMenahel@gmail.com" && password == "menahel12345")
            {
                Session["nihol"] = "ok";
                Session["name"] = "יהונתן מנהל";

                Response.Redirect("showMembers.aspx");
            }
            else
            {
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE Gmail = N'" + email + "' " +
                    "AND Password = N'" + password + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);


                if (dt.Rows.Count == 0)
                    stResult = "אין נתונים";
                else
                {
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["fn"];
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}
