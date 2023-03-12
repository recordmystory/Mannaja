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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
                Response.Redirect(FormsAuthentication.DefaultUrl);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            // 로그인 버튼
            if (IsAuthenticated(TextBox1.Text, TextBox2.Text))
            {
                // 로그인 시켜줌 (1) 인증 쿠키 생성 (2) 요청했던 페이지로 이동
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
                Label2.Text = "ID 또는 비밀번호가 틀립니다.";
        }

        private bool IsAuthenticated(string userID, string password)
        {
            bool result = false; // 초기값
                                 // DB 연동하여 해당 아이디의 사용자가 있는지 체크
                                 //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = "Select * from Member Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", userID);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            //실행
            result = true; // 임시로

            return result;
        }
    }
}