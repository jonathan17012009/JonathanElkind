using System;
using System.Collections.Generic;
using System.Linq;
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
                Response.Redirect("showMembers.aspx");
            }
            else
            {
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE Gmail = N'" + email + "' " +
                    "AND Password = N'" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sqlSelect);


                if (!userExists)
                    stResult = "אימייל או סיסמה שגויים";
                else
                    stResult = "משתמש רשום";
            }
        }
    }
}
