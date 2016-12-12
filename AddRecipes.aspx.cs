using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

public partial class AddRecipes : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    OracleConnection con;
    OracleCommand cmd = new OracleCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Save(object sender, EventArgs e)
    {
        con = new OracleConnection("DATA SOURCE=oracle1.centennialcollege.ca:1521/SQLD;PASSWORD=password;USER ID=COMP214F16_003_P_26");
        cmd.Parameters.Add("RecipeName", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
        cmd.Parameters["RecipeName"].Value = RecipeNameTB.Text;
        cmd.Parameters.Add("SubmittedBy", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
        cmd.Parameters["SubmittedBy"].Value = SubmittedByTB.Text;
        cmd.Parameters.Add("Catagory", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
        cmd.Parameters["Catagory"].Value = CatagoryDDL.SelectedItem.Text;
        cmd.Parameters.Add("CookTime", Oracle.ManagedDataAccess.Client.OracleDbType.Int32);
        cmd.Parameters["CookTime"].Value = CookTimeTB.Text;
        cmd.Parameters.Add("Portions", Oracle.ManagedDataAccess.Client.OracleDbType.Int32);
        cmd.Parameters["Portions"].Value = PortionTB.Text;
        cmd.Parameters.Add("Cusine", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
        cmd.Parameters["Cusine"].Value = CusineDDL.SelectedItem.Text;
        cmd.Parameters.Add("Access", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
        cmd.Parameters["Access"].Value = AccessCB.Checked;
        cmd.Parameters.Add("Description", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
        cmd.Parameters["Description"].Value = DescriptionTB.Text;
        cmd.CommandText = "AddRecipe";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.AbsoluteUri); 
        con.Close();

    }


}