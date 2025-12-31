using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspNet : System.Web.UI.Page
{
    public string kefel;
    protected void Page_Load(object sender, EventArgs e)
    {
        kefel = "<table border ='1'>";
        for (int i = 1; i<=10; i++)
        {
            kefel += "<tr>";
            for (int j = 1; j<=10; j++)
            {
                kefel += "<td>" + (i * j) + "</td>";
            }
            kefel += "</tr>";
        }
        kefel += "</table>";
    }
}

