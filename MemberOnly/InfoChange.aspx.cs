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
    public partial class Modify11 : System.Web.UI.Page
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
                    Label3.Text = id;
                    TextBox4.Text = rd["Name"].ToString();
                    TextBox5.Text = rd["Phone"].ToString();
                    TextBox6.Text = rd["Address"].ToString();
                    TextBox7.Text = rd["bank"].ToString();
                }
                rd.Close();
                con.Close();

            }
    }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {

            //변경합니다 버튼
            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = "Update Member Set Password=@Password, Name=@Name, Phone=@Phone, Address=@Address, bank=@bank Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@bank", TextBox7.Text);
            cmd.Parameters.AddWithValue("@UserID", Page.User.Identity.Name);
            //실행
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0)
            {
                string str = "<script> alert('정보가 변경되었습니다.');";
                str += "location.href='/MemberOnly/Mypage.aspx'; </script>";
                Response.Write(str);
            }
            else
                Label2.Text = "정보변경에 실패했습니다.";
        }
    }
}