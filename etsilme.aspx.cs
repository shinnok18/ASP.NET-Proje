using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class etsilme : System.Web.UI.Page
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
    protected void UpdateCancelButton_Click1(object sender, EventArgs e)
    {
        TextBox2.Text = "";
    }
    protected void FormView1_ItemDeleted1(object sender, FormViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = GridView1.SelectedDataKey.Value.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}