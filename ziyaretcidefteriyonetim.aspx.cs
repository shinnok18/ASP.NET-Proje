using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ziyaretcidefteriyonetim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uyeadi"] != "")
        {
            Label1.Text = Session["uyeadi"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}