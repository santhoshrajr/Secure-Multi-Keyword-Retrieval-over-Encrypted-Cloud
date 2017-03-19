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

public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        method();

    }
    public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    public void method()
    {
        conn.Open();
        SqlCommand cmdf = new SqlCommand("select fileid,filename,filesize,filetype,name,attachment from fileuploadlist ", conn);
        SqlDataAdapter dr = new SqlDataAdapter(cmdf);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
        conn.Close();

    }
    public void main()
    {
        conn.Open();
        //SqlCommand cmd=new SqlCommand("insert into 
    }
   
    protected void gvDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvDetails_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //int index = Convert.ToInt32(e.CommandArgument);
        //GridViewRow row = GridView1.Rows[index];

        //string fName = row.Cells[2].Text;
        //Response.ContentType = "application/octet-stream";
        //Response.AddHeader("Content-Disposition", "attachment;filename=" + fName);
        //Response.TransmitFile(Server.MapPath("~\\File\\" + fName));
        //Response.End();

    }
    public int number;
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "dwn")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvDetails.Rows[index];
            Label lbl=(Label)row.FindControl("Label1");
            number = 1;
            conn.Open();
            SqlCommand cmds = new SqlCommand("select count(*) from fileuploadlist", conn);
            int j = (int)cmds.ExecuteScalar();
            conn.Close();
            number = number + j;
            conn.Open();
            SqlCommand cmdinser = new SqlCommand("insert into Downloadlist values('" + number + "','" + lbl.Text + "','" + Session["unaem"].ToString() +"')", conn);
            cmdinser.ExecuteNonQuery();
            conn.Close();
            string fName = lbl.Text;
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + fName);
            Response.TransmitFile(Server.MapPath("~\\data\\" + fName));
            Response.End();
           
                      

        }

    }
}
