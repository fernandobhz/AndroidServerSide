<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="AndroidServerSide._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="816px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Send SMS" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <a href="received.aspx">received.aspx</a><br />
</asp:Content>
