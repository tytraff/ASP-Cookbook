<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <h1 class="text-center">This is the search page!</h1>
    <asp:Panel ID="Panel2" runat="server" CssClass="btn-group center-block">
        <asp:Button ID="btnDark" runat="server" Text="Dark" OnClick="btnDark_Click" CssClass="btn btn-default" CausesValidation="false" />
        <asp:Button ID="btnLight" runat="server" Text="Light" OnClick="btnLight_Click" CssClass="btn btn-default" CausesValidation="false" />
        <asp:Button ID="btnDefault" runat="server" Text="Default" OnClick="btnDefault_Click" CssClass="btn btn-default" CausesValidation="false" />
    </asp:Panel>
</asp:Content>


