using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //추가
using System.Data.SqlClient;
using System.Configuration;
using System.IO; //파일 저장 관련

namespace projectAll.Album
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {//연결
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                string sql = "Select* from DDiary Where imgID = " + Request.QueryString["imgID"];
                SqlCommand cmd = new SqlCommand(sql, con);

                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    TextBox1.Text = rd["title"].ToString();
                    TextBox2.Text = rd["body"].ToString();
                    TextBox3.Text = rd["name"].ToString();
                    Label2.Text = rd["fName"].ToString();
                    Image1.ImageUrl = "~/Photos/" + Label2.Text;
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
        }

        protected void Button2_Click(object sender, EventArgs e)
        { 
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            // 수정 버튼
            string imgID = Request.QueryString["imgID"];
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string sql = @"Update DDiary Set title=@title, body=@body, name=@name Where imgID=@imgID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@body", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@imgID", imgID); con.Open();
            cmd.ExecuteNonQuery(); con.Close();
            Response.Redirect("Show.aspx?imgID=" + imgID);
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            // 취소 버튼
            Response.Redirect("Show.aspx?imgID=" + Request.QueryString["imgID"]);
        }
    }
}