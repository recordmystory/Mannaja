using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO; //파일 저장 관련

namespace Project001
{
    public partial class VisitWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Page.User.Identity.Name;
            Label1.Text = user;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {//쓰기 버튼
            string seq = Request.QueryString["sn"];

            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "insert into visit values(@vid,@vname,@vtitle, @vbody, getdate(), @vstar, @ref_id)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@vid", Label1.Text);
            cmd.Parameters.AddWithValue("@vname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@vtitle", TextBox2.Text);
            cmd.Parameters.AddWithValue("@vbody", TextBox3.Text);
            cmd.Parameters.AddWithValue("@vstar", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ref_id", seq);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Visit.aspx?sn="+seq);
         }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string seq = Request.QueryString["sn"];

            Response.Redirect("Visit.aspx?sn=" + seq);
        }
    }
}