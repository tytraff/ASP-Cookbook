<%@ Control Language="C#" AutoEventWireup="true" CodeFile="IngredientQ.ascx.cs" Inherits="IngredientQ" %>
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
<asp:TextBox ID="myTextBox" runat="server" TextMode="Number" min="0" max="30" CssClass="form-control"/>
