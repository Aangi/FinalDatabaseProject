<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxUC.ascx.cs" Inherits="WebUserControl" %>

<script runat="server">
    public string LabelText
    {
        set { myLabel.Text = value; }
    }
    public string Text
    {
        get { return myTextBox.Text; }
    }

</script>

<p>
    <asp:Label runat="server" ID="myLabel" Text="" Width="250" />
    <asp:TextBox ID="myTextBox" Text="" Width="500" MaxLength="70" Height="25px" Font-Size="20px" runat="server" /><br /><br />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="myTextBox" BorderStyle="Solid" BorderColor="IndianRed" ForeColor="Red" ErrorMessage="Information missing! Fields marked with * are mandatory to be filled." SetFocusOnError="true" Display="Dynamic" />
</p>