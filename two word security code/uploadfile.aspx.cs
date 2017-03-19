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
using System.IO;

public partial class uploadfile : System.Web.UI.Page
{
    public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        method();
    }
    public string t, ty, f, k, m, strFile,lin,filenames;
    public int number;
    public void method()
    {
        conn.Open();
        SqlCommand cmdf = new SqlCommand("select fileid,filename,filesize,filetype,name from fileuploadlist ", conn);
        SqlDataAdapter dr = new SqlDataAdapter(cmdf);
        DataSet ds = new DataSet();
        dr.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label3.Text = "Enter FileName";
            
        }
        else
        {
            Random rn = new Random();
            int n = rn.Next(1111, 10000);
           
            t = FileUpload1.FileName;
            ty = Path.GetExtension(FileUpload1.FileName);
            f = Path.GetFileNameWithoutExtension(FileUpload1.FileName);

            FileUpload1.SaveAs(Server.MapPath("~/data/") + FileUpload1.FileName);
           // CreateAttachment(FileUpload1.FileName);
            //string re = Server.MapPath("~/data/") + strFile;
        //FileStream objFileStream = new FileStream(f, FileMode.Open, FileAccess.Read);

            m = Server.MapPath("~/upload/");
            k = m + f + ".jar";
            lin = m + f;
            string name="Admin";
            FileStream outFile = new FileStream(k, FileMode.Create, FileAccess.Write);
            strFile = FileUpload1.FileName;
            StreamWriter writer = new StreamWriter(outFile);
            string re = Server.MapPath("~/data/") + strFile;
            writer.Close();
            FileStream objFileStream = new FileStream(re, FileMode.Open, FileAccess.Read);
            int intLength = Convert.ToInt32(objFileStream.Length);
            DataTable objTable = new DataTable();
            byte[] objData;
            objData = new byte[intLength];
           
            //objAdapter.Fill(objTable);
             
            number = 1;
            conn.Open();
            SqlCommand cmds = new SqlCommand("select count(*) from fileuploadlist", conn);
            int j = (int)cmds.ExecuteScalar();
            conn.Close();
            number = number + j;
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into fileuploadlist(fileid,filename,filesize,attachment,filetype,name) values('" + number + "','" + t+ "','" + intLength + "','" +lin + "','" + ty + "','" + name + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close(); 
            Label3.Text = "Insert sucessfully";
            method();

        }
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow gtr = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbl = (Label)gtr.FindControl("Label1");
        string  s = lbl.Text;
        conn.Open();
        SqlCommand cmdel = new SqlCommand("delete from fileuploadlist where fileid='"+s+"'",conn);
        cmdel.ExecuteNonQuery();
        conn.Close();
        method();
    }
}

