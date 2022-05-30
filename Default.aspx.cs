using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox sayac = (TextBox)FormView1.FindControl("sayacTextBox");
        sayac.Text = Convert.ToString(Convert.ToInt32(sayac.Text) + 1);
        FormView1.UpdateItem(true);
        AccessDataSource2.Update();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FormView2.DataBind();
        TextBox uyeadi1 = (TextBox)FormView2.FindControl("uyeadiTextBox");
        if (FormView2.DataItemCount > 0)
        {

            Session["uyeadi"] = uyeadi1.Text.ToString();
            Label1.Visible = false;

            TextBox4.Text = uyeadi1.Text;
            TextBox2.Text = "";
            TextBox3.Text = "";
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Üye girişi ve şifre yanlış.";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["uyeadi"] = "";
        Session.Abandon();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}