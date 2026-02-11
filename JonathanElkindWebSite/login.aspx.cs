using System;

namespace JonathanElkindWebSite
{
    public partial class Default : System.Web.UI.Page
    {
        public string stResult = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string fullname = Request.Form[" fullname"]; //form:name 
                string email = Request.Form["email"];
                string password = Request.Form["password"];
                string checkbox = Request.Form["checkbox"];
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE Email = N'" + email + "' " +
                    "AND UserPassword = N'" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sqlSelect);

                if (!userExists)
                    stResult = "אימייל או סיסמה שגויים";
                else
                    stResult = "משתמש רשום";

            }
        }
    }
}
}