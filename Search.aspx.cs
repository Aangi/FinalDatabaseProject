using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Search_Click(object sender, EventArgs e)
    {

        OracleConnection con = new OracleConnection("DATA SOURCE=oracle1.centennialcollege.ca:1521/SQLD;PASSWORD=password;USER ID=COMP214F16_003_P_26");
        con.Open();
        OracleCommand comm = new OracleCommand();
        OracleDataReader reader;
        string accessCmd = "";
        if(privateSearch.Checked == true)
        {
            accessCmd = " AND (Private=:Private)";
        }
        if (srchByNameRB.Checked)
        {
            comm = new OracleCommand("SELECT RecipeName, SubmittedBy, Catagory, CookTime, Portions, Cusine, Description FROM Recipes WHERE (RecipeName = :p1)" + accessCmd, con);

                string RecipeName = inputTB.Text;   
                string Private = privateSearch.Checked.ToString();
                comm.Parameters.Add("RecipeName", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
                comm.Parameters["RecipeName"].Value = inputTB.Text;
            OracleParameter p2 = new OracleParameter();
                p2.ParameterName = "Private";
                p2.OracleDbType = OracleDbType.Varchar2;
                p2.Value = privateSearch;
                comm.Parameters.Add(p2);
                reader = comm.ExecuteReader();
                recipeRepeater.DataSource = reader;
                recipeRepeater.DataBind();
                reader.Close();
            

                con.Close();
            
            
        }
        else if (srchBySubByRB.Checked)
        {
            
            
                string SubmittedBy = inputTB.Text;
                string Private = privateSearch.Checked.ToString();
            comm.Parameters.Add("SbmittedBy", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
            comm.Parameters["SubmittedBy"].Value = SubmittedBy;
            comm.Parameters.Add("Private", Oracle.ManagedDataAccess.Client.OracleDbType.Varchar2);
                comm.Parameters["Private"].Value = Private;
                comm.CommandText = "SearchRecipe";
            comm.CommandType = CommandType.StoredProcedure;
            reader = comm.ExecuteReader();
                recipeRepeater.DataSource = reader;
                recipeRepeater.DataBind();
                reader.Close();
            

                con.Close();
            
        }
        
    }
}