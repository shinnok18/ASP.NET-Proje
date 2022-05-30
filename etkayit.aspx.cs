using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class etkayit : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        AccessDataSource2.Insert();
        GridView1.DataBind();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}