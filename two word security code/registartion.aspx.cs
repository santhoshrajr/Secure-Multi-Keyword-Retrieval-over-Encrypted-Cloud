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
public partial class registartion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    public int number;
    protected void Button1_Click(object sender, EventArgs e)
    {
        number = 10000;
        conn.Open();
        SqlCommand cmds = new SqlCommand("select count(*) from fileuploadlist", conn);
        int j = (int)cmds.ExecuteScalar();
        conn.Close();
        number = number + j;
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + number + "','" + TextBox3.Text + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Label3.Text = "Your Are Sucessfully Registered and Your Security Code is:"+number;

    }
}
