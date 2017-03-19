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
public partial class adminlogin : System.Web.UI.Page
{
    public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public int number;
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Response.Redirect("adminhomepage.aspx");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from registration where SecurityCode='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", conn);
        number = (int)cmd.ExecuteScalar();
        if (number == 1)
        {
            Response.Redirect("adminhomepage.aspx");
            conn.Close();
        }

        else
        {
            Label5.Text = "Invaild Data";
        }
        conn.Close();

    }
}
