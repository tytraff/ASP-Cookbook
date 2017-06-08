using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddRecipie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblImg.Text = "Upload Image:";
        btnSubmit.Text = "Submit Recipe";
        lblDrop.Text = "How many ingredients would you like to include?";


        for (int i = 1; i <= 15; i++)
        {
            Panel a = (Panel)FindControlRecursive(Page, String.Format("pnlIng{0}", i));
            if (a != null)
                a.Visible = false;

        }

    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        string theme = (string)Session["theme"];
        if (theme != null)
        {
            Page.Theme = "Dark";
        }

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        /*
        Application["Ingredient"] = new Ingredient();
        {
            IName = txtIName.Text;
            Quantity = Convert.ToInt32(txtIQuan),
            Unit = txtIUnit.Text
        };
        */

        if (Page.IsValid)
        {
            ((List<Recipe>)Application["recipes"]).Add(new Recipe { Name = txtName.Text, SubmitBy = txtSubmit.Text, Time = Convert.ToInt32(txtTime.Text), Category = txtCategory.Text, Description = txtDescription.Text, Servings = Convert.ToInt32(txtServings.Text) });
            
            Application["Recipe"] = new Recipe
            {
                Name = txtName.Text,
                SubmitBy = txtSubmit.Text,
                Category = txtCategory.Text,
                Time = Convert.ToInt32(txtTime.Text),
                Servings = Convert.ToInt32(txtServings.Text),
                Description = txtDescription.Text,
            };

            Response.Redirect("Recipes.aspx");
        }
    }

    private Control FindControlRecursive(Control rootControl, string controlID)
    {
        if (rootControl.ID == controlID) return rootControl;

        foreach (Control controlToSearch in rootControl.Controls)
        {
            Control controlToReturn = FindControlRecursive(controlToSearch, controlID);
            if (controlToReturn != null) return controlToReturn;
        }
        return null;
    }

    protected void btnDark_Click(object sender, EventArgs e)
    {
        Session["theme"] = "Dark";
        Response.Redirect("AddRecipe.aspx");
    }

    protected void btnLight_Click(object sender, EventArgs e)
    {
        Session["theme"] = "Light";
        Response.Redirect("AddRecipe.aspx");
    }

    protected void btnDefault_Click(object sender, EventArgs e)
    {
        Session["theme"] = null;
        Response.Redirect("AddRecipe.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = 0;
        int.TryParse(DropDownList1.SelectedValue, out x);
        for (int i = 1; i <= x; i++)
        {
            Panel a = (Panel)FindControlRecursive(Page, String.Format("pnlIng{0}", i));
            if (a != null)
                a.Visible = true;

        }
    }
}
