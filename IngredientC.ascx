<%@ Control Language="C#" AutoEventWireup="true" CodeFile="IngredientC.ascx.cs" Inherits="Ingredient" %>

<script runat="server">
    public string LabelText
    {
        set
        {
            myLabel.Text = value;
        }
    }


    public string Text
    {
        get
        {
            return myTextBox.Text;
        }
    }

</script>

<asp:Label ID="myLabel" runat="server" Text=""/>
<asp:TextBox ID="myTextBox" runat="server" Text="" CssClass="form-control"/>

