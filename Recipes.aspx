<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <h1 class="text-center">Recipes</h1>
    <hr />
    <asp:Panel ID="Panel1" runat="server" CssClass="container">
        <div class="row">
            <asp:Repeater ID="recipeDataGrid" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="Panel3" runat="server" CssClass="panel panel-default">
                        <asp:Panel ID="Panel4" runat="server" CssClass="panel-heading">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="h2"><%# Eval("Name") %></asp:HyperLink>
                 <!--           <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label> -->
                        </asp:Panel>
                        <asp:Panel ID="Panel5" runat="server" CssClass="panel-body">
                            <asp:Label ID="Label1" runat="server" Text="Submitted By:"></asp:Label>
                            <asp:Label ID="lblSubmit" runat="server" Text='<%# Eval("SubmitBy") %>'></asp:Label>   
                        </asp:Panel>
                        <asp:Panel ID="Panel6" runat="server" CssClass="panel-body">
                             <asp:Label ID="Label2" runat="server" Text="Preperation Time:"></asp:Label>
                             <asp:Label ID="lblTime" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                        </asp:Panel>
                    </asp:Panel>
                    <!--
                    <table>
                        <tr>
                            <td>Name</td>
                            <td>
                                <asp:TextBox runat="server" ID="Name" Text='<%# Eval("Name") %>' Visible="true" />
                            </td>
                        </tr>
                        <tr>
                            <td>Submited By</td>
                            <td>
                                <asp:TextBox runat="server" ID="SubmitBy" Text='<%# Eval("SubmitBy") %>' Visible="true" />
                            </td>
                        </tr>
                        <tr>
                            <td>Prep Time</td>
                            <td>
                                <asp:TextBox runat="server" Id="Time" Text='<%# Eval("Time") %>' Visible="true" />
                            </td>
                        </tr>
                    </table>
                    -->
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="btn-group center-block">
        <asp:Button ID="btnDark" runat="server" Text="Dark" OnClick="btnDark_Click" CssClass="btn btn-default" CausesValidation="false" />
        <asp:Button ID="btnLight" runat="server" Text="Light" OnClick="btnLight_Click" CssClass="btn btn-default" CausesValidation="false" />
        <asp:Button ID="btnDefault" runat="server" Text="Default" OnClick="btnDefault_Click" CssClass="btn btn-default" CausesValidation="false" />
    </asp:Panel>
</asp:Content>


