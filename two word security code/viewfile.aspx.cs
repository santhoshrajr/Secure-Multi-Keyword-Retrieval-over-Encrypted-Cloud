using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class viewfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void User_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;

    }
    public void method()
    {
        conn.Open();
        SqlCommand cmdf = new SqlCommand("select *from Downloadlist ", conn);
        SqlDataAdapter dr = new SqlDataAdapter(cmdf);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();

    }
}
