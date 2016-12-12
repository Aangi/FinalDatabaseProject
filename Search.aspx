<%@ Page Language="C#" MasterPageFile="RecipeBook.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <asp:label runat="server" font-size="XX-Large">Feeling Hungry? Let's see what you can have...</asp:label><br /><br /><br />
    <form runat="server">
    <asp:Label runat="server" Font-Size="Large">Search By: </asp:Label>
        <br />
    <asp:RadioButton ID="srchByNameRB" runat="server" groupName="searchBy" Text="Name" />
        <asp:RadioButton ID="srchBySubByRB" runat="server" groupName="searchBy" Text="Submitted By" />
        <br /><br />
        <asp:CheckBox checked="false" ID="privateSearch" runat="server" />Search for private Recipes only
        <br />
        <br />
        <asp:TextBox ID="inputTB" runat="server" Font-Size="20px" Height="25px"></asp:TextBox>
        <br /><br />
        <asp:Button runat="server" Height="35px" Width="150px" Text="Search!" Font-Size="25px" OnClick="Search_Click" />
        </form>
    <div id="repeaterDiv" style="text-align:left">
        <asp:Repeater ID="recipeRepeater" runat="server">
            <ItemTemplate>
                Recipe Name: 
                <strong><%#Eval("RecipeName")%></strong><br />
                Submitted By: 
                <strong><%#Eval("SubmittedBy")%></strong><br />
                Category: 
                <strong><%#Eval("Catagory")%></strong><br />
                Cooking Time(in minutes): 
                <strong><%#Eval("CookTime")%></strong><br />
                Portions(in number of servings): 
                <strong><%#Eval("Portions")%></strong><br />
                Cusine: 
                <strong><%#Eval("Cusine")%></strong><br />
                Descriptions:
                <br /><%#Eval("Description") %>
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:Repeater>
        </div>
</asp:Content>