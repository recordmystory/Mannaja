using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //추가
using System.Data.SqlClient;
using System.Configuration;
using System.IO; // 파일 저장 관련
using System.Web.Security;  


namespace Final
{
    public partial class Mypage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Page.User.Identity.Name;
                //DB에서 이 id의 레코드 값을 읽어와서 화면에 보여준다
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                //명령
                string sql = "Select * from Member Where UserID=@UserID";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@UserID", id);
                //실행
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Label1.Text = rd["Name"].ToString();
                    Label2.Text = rd["Phone"].ToString();
                    Label3.Text = rd["Address"].ToString();
                    Label4.Text = rd["bank"].ToString();
                }
                rd.Close();
                con.Close();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/MemberOnly/InfoChange.aspx");
        }
    }
}