using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Application["PageCounter"] == null)
        {
            Application["PageCounter"] = 1;
        }
        else
        {
            Application.Lock();
            Application["PageCounter"] = (int)Application["PageCounter"] + 1;
            Application.UnLock();
        }
        counterLabel.Text = Convert.ToString(Application["PageCounter"]);
    }
}