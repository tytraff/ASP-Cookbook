<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRecipe.aspx.cs" Inherits="AddRecipie" %>

<%@ Register TagPrefix="ing" TagName="IngredientC"
    Src="IngredientC.ascx" %>
<%@ Register TagPrefix="ingu" TagName="IngredientU"
    Src="IngredientU.ascx" %>
<%@ Register TagPrefix="ingq" TagName="IngredientQ"
    Src="IngredientQ.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Content/AddRecipe.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <h1 class="text-center">ADD A RECIPE!</h1>
    <hr />

    <asp:Panel ID="Panel1" runat="server" CssClass=" container form-group">
        <div>
            <h1>Recipe Info</h1>
            <p>
                <b>Recipe Name: </b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                <b>Submitted By:</b>
                <asp:RequiredFieldValidator ID="reqSubmit" runat="server" ControlToValidate="txtSubmit" ErrorMessage="Submitted By Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtSubmit" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                <b>Category:</b>
                <asp:RequiredFieldValidator ID="reqCat" runat="server" ControlToValidate="txtCategory" ErrorMessage="Category Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                <b>Prep/Cook Time:</b>
                <asp:RequiredFieldValidator ID="reqTime" runat="server" ControlToValidate="txtTime" ErrorMessage="Prep Time Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtTime" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                <b>Num Of Servings:</b>
                <asp:RequiredFieldValidator ID="reqServings" runat="server" ControlToValidate="txtServings" ErrorMessage="Servings Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtServings" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
            <p>
                <b>Description:</b>
                <asp:RequiredFieldValidator ID="reqDescription" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
            </p>

            <asp:Panel ID="pnlIngredients" runat="server" CssClass="panel panel-default">
                <asp:Panel ID="Panel3" runat="server" CssClass="panel-heading">
                    <p><b>Ingredients: </b></p>
                </asp:Panel>
                <asp:Panel ID="pnlDropDown" runat="server" CssClass="panel-body">
                    <asp:Label ID="lblDrop" runat="server" Text="Label"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control dlist">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            <asp:ListItem Value="13"></asp:ListItem>
                            <asp:ListItem Value="14"></asp:ListItem>
                            <asp:ListItem Value="15"></asp:ListItem>
                        </asp:DropDownList>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Select" OnClick="Button1_Click" CausesValidation="false" CssClass="btn btn-primary" />
                </asp:Panel>
                <asp:Panel ID="pnlIng1" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng2" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng3" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng4" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng5" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng6" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng7" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng8" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng9" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng10" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng11" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng12" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng13" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng14" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
                <asp:Panel ID="pnlIng15" runat="server" CssClass="panel-body">
                    <ing:IngredientC runat="server" LabelText="Name: " />
                    <ingq:IngredientQ runat="server" LabelText="Quantity: " />
                    <ingu:IngredientU runat="server" LabelText="Unit Of Measure: " />
                </asp:Panel>
            </asp:Panel>
            <div class="form-group">
                <asp:Label ID="lblImg" runat="server" Text="Label"></asp:Label>
                <asp:FileUpload ID="flImage" runat="server" CssClass="form-control"></asp:FileUpload>
                <p class="help-block">Select An Image Of Dish To Upload.</p>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
            <input type="reset" name="reset" value="Clear Input" class="btn btn-danger" />

        </div>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" CssClass="btn-group center-block">
        <asp:Button ID="btnDark" runat="server" Text="Dark" OnClick="btnDark_Click" CssClass="btn btn-default" CausesValidation="false" />
        <asp:Button ID="btnLight" runat="server" Text="Light" OnClick="btnLight_Click" CssClass="btn btn-default" CausesValidation="false" />
        <asp:Button ID="btnDefault" runat="server" Text="Default" OnClick="btnDefault_Click" CssClass="btn btn-default" CausesValidation="false" />
    </asp:Panel>


</asp:Content>