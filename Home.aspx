<%@ Page Language="C#" MasterPageFile="RecipeBook.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <p>This is the official website of Foodinho Recipe Book. </p>
    <p> Here you can get various recipes of different cuisines from all over the world through our search recipe page! </p>
    <p> You can also add your own recipe for others to discover. </p>
    <p> Not a fan for sharing? No problem! Make your recipes private by selecting the "Set as private" check box while adding your recipe through the Add Recipe page.</p>
    <br /><br /><br /><br />
    <p> This website has been visited </p><p style="font-family:'Edwardian Script ITC'; font-size:48px;"><asp:Label runat="server" ID="counterLabel" /> times</p> <p>so far!</p>
</asp:Content>