<%@ Page Language="C#" MasterPageFile="RecipeBook.master" AutoEventWireup="true" CodeFile="AddRecipes.aspx.cs" Inherits="AddRecipes" %>
<%@ Register TagPrefix="sp" TagName="TextBoxUC" Src="~/TextBoxUC.ascx" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="form">
        <form id="AddRecipeForm" runat="server">
            <br />
            <p style="font-size:small">Fields marked with an * sign are mandatory.</p>
            <sp:TextBoxUC ID="RecipeNameTB" runat="server" LabelText="* Recipe Name: " />
            <sp:TextBoxUC ID="SubmittedByTB" runat="server" LabelText="* Submitted By: " />
            <asp:Label Width="250" runat="server">Catagory: </asp:Label>
            <asp:DropDownList ID="CatagoryDDL" Width="500" runat="server" Height="25px" Font-Size="20px">
                <asp:ListItem Text="Breakfast" Value="1"></asp:ListItem>
                <asp:ListItem Text="Lunch" Value="2"></asp:ListItem>
                <asp:ListItem Text="Brunch" Value="3"></asp:ListItem>
                <asp:ListItem Text="Dinner" Value="4"></asp:ListItem>
                <asp:ListItem Text="Snacks" Value="5"></asp:ListItem>
                <asp:ListItem Text="Beverage" Value="6"></asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label Width="280" runat="server">* Cooking Time(in minutes): </asp:Label><asp:TextBox ID="CookTimeTB" Width="100" TextMode="Number" runat="server" Height="25px" Font-Size="20px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="CookTimeTB" BorderStyle="Solid" BorderColor="IndianRed" Width="150" ForeColor="Red" ErrorMessage="Please specify the cooking time." SetFocusOnError="true" Display="Static" />
            <asp:RangeValidator runat="server" ControlToValidate="CookTimeTB" MinimumValue="1" MaximumValue="999999" BorderStyle="Solid" BorderColor="IndianRed" Width="150" ForeColor="Red" ErrorMessage="Cook time cannot be in negetive." SetFocusOnError="true" Display="Static" /><br /><br />    
            <asp:Label Width="280" runat="server">* Portions(in number of servings): </asp:Label><asp:TextBox ID="PortionTB" Width="100" TextMode="Number" runat="server" Height="25px" Font-Size="20px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="PortionTB" Width="150" BorderStyle="Solid" BorderColor="IndianRed" ForeColor="Red" ErrorMessage="Please specify the portion." SetFocusOnError="true" Display="Static" />
            <asp:RangeValidator runat="server" ControlToValidate="CookTimeTB" MinimumValue="1" MaximumValue="999999" BorderStyle="Solid" BorderColor="IndianRed" Width="150" ForeColor="Red" ErrorMessage="Portions cannot be in negetive." SetFocusOnError="true" Display="Static" /><br /><br />
            <asp:Label Width="250" runat="server">Cuisine: </asp:Label>
            <asp:DropDownList ID="CusineDDL" Width="500" Height="25px" Font-Size="20px" runat="server">
                <asp:ListItem Text="American" Value="1"></asp:ListItem>
                <asp:ListItem Text="British" Value="2"></asp:ListItem>
                <asp:ListItem Text="Carribian" Value="3"></asp:ListItem>
                <asp:ListItem Text="Chinese" Value="4"></asp:ListItem>
                <asp:ListItem Text="French" Value="5"></asp:ListItem>
                <asp:ListItem Text="Greek" Value="6"></asp:ListItem>
                <asp:ListItem Text="Indian" Value="7"></asp:ListItem>
                <asp:ListItem Text="Italian" Value="8"></asp:ListItem>
                <asp:ListItem Text="Japanese" Value="9"></asp:ListItem>
                <asp:ListItem Text="Mediterranean" Value="10"></asp:ListItem>
                <asp:ListItem Text="Mexican" Value="11"></asp:ListItem>
                <asp:ListItem Text="Moroccan" Value="12"></asp:ListItem>
                <asp:ListItem Text="Spanish" Value="13"></asp:ListItem>
                <asp:ListItem Text="Thai" Value="14"></asp:ListItem>
                <asp:ListItem Text="Turkish" Value="15"></asp:ListItem>
                <asp:ListItem Text="Vietnamese" Value="16"></asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label runat="server">Set as Private: </asp:Label>
            <asp:CheckBox ID="AccessCB" runat="server" Checked="false" /><br /><br />
            <asp:Label runat="server" ID="IngredientsLabel"></asp:Label>
            <asp:Label runat="server">Description: </asp:Label><br /><asp:TextBox ID="DescriptionTB" Height="300px" Width="500px" Font-Size="20px" runat="server" TextMode="MultiLine"></asp:TextBox><br /><br />
            <asp:Button OnClick="Save" runat="server" Height="35px" Width="150px" Text="Add Recipe!" Font-Size="25px" />
            <asp:ValidationSummary BorderStyle="Double" Width="970" BorderColor="IndianRed" ForeColor="Red" DisplayMode="BulletList" ID="ValSumm" runat="server" />
        </form>
    </div>
</asp:Content>