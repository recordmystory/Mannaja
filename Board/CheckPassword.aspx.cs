using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; //추가
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO; //파일 저장 관련

namespace Project001.Board
{
    public partial class CheckPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["mode"] == "edit")
                ImageButton1.ImageUrl = "~/images/btn_edit.PNG";  // 수정 버튼 표시
            else
                ImageButton1.ImageUrl = "~/images/btn_delete.PNG";  // 삭제 버튼 표시
        }
   

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
        string seq = Request.QueryString["sn"];

        string hashPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "sha1");

        string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Select * From board01 Where seq = @seq and pwd = @pwd";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@seq", seq);
        cmd.Parameters.AddWithValue("@pwd", hashPwd);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            if (Request.QueryString["mode"] == "edit")
                Response.Redirect("Edit.aspx?sn=" + seq);
            else
                Response.Redirect("Delete.aspx?sn=" + seq);
        }
        else
            Label1.Text = "비밀번호가 일치하지 않습니다.";
        rd.Close();
        con.Close();


    }
}
}