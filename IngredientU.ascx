<%@ Control Language="C#" AutoEventWireup="true" CodeFile="IngredientU.ascx.cs" Inherits="IngredientU" %>

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
            return unit.SelectedValue;
        }
    }

</script>

<asp:Label ID="myLabel" runat="server" Text=""/>
<asp:DropDownList ID="unit" runat="server" CssClass="form-control">
    <asp:ListItem Selected="True" Value="#">Unit Of Measure..</asp:ListItem>
    <asp:ListItem Value="lb">Lbs</asp:ListItem>
    <asp:ListItem Value="oz">Ozs</asp:ListItem>
    <asp:ListItem Value="kg">Kgs</asp:ListItem>
    <asp:ListItem Value="tsp">Tsp</asp:ListItem>
    <asp:ListItem Value="tbsp">Tbsp</asp:ListItem>
    <asp:ListItem Value="pinch">Pinch</asp:ListItem>
    <asp:ListItem Value="cup">Cup</asp:ListItem>
</asp:DropDownList>