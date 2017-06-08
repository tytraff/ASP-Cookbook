using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Recipie
/// </summary>
public class Recipe : System.Web.UI.Page
{
    public string Name { get; set; }
    public string SubmitBy { get; set; }
    public string Category { get; set; }
    public int Time { get; set; }
    public int Servings { get; set; }
    public string Description { get; set; }
    public string Ingredient { get; set; }

    public List<Ingredient> ingredients;

    public Recipe()
    {
        /*
        this.Name = name;
        this.SubmitBy = submit;
        this.Category = category;
        this.Time = time;
        this.Servings = servings;
        this.Description = desc;
        */

    }
}