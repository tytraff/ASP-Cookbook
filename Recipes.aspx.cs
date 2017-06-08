using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recipies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        lblCategory.Text = "Category: ";
        lblSubmit.Text = "Submitted By: ";
        lblDecription.Text = "Description: ";
        lblServings.Text = "Servings: ";
        lblTime.Text = "Preperation Time: ";

        Recipie recipie = (Recipie)Application["Recipie"] as Recipie;

        if (recipie != null)
        {
            r1Name.Text = recipie.Name;
            r1Submit.Text = recipie.SubmitBy;
            r1Category.Text = recipie.Category;
            r1Time.Text = recipie.Time.ToString();
            r1Servings.Text = recipie.Servings.ToString();
            
        }
        */

        recipeDataGrid.DataSource = Application["recipes"];
        recipeDataGrid.DataBind();
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        string theme = (string)Session["theme"];
        if (theme != null)
        {
            Page.Theme = theme;
        }

    }

    protected void btnDark_Click(object sender, EventArgs e)
    {
        Session["theme"] = "Dark";
        Response.Redirect("Recipes.aspx");
    }

    protected void btnLight_Click(object sender, EventArgs e)
    {
        Session["theme"] = "Light";
        Response.Redirect("Recipes.aspx");
    }

    protected void btnDefault_Click(object sender, EventArgs e)
    {
        Session["theme"] = null;
        Response.Redirect("Recipes.aspx");
    }
}