using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//추가
using System.Data; //추가
using System.Data.SqlClient;
using System.Configuration;
using System.IO; //파일 저장 관련

namespace projectAll.Album
{
    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //연결
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                string sql = @"update DDiary Set hit = hit+1 Where imgID=@imgID";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@imgID", Request.QueryString["imgID"]);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        { //수정 버튼
            Response.Redirect("CheckPassword.aspx?mode=edit&imgID=" + Request.QueryString["imgID"]);
        }
        
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        { //삭제 버튼
            Response.Redirect("CheckPassword.aspx?mode=del&imgID=" + Request.QueryString["imgID"]);
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}