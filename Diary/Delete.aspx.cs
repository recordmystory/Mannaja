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
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string imgID = Request.QueryString["imgID"];

            // 1) 첨부파일이 있으면 같이 삭제해야하므로 파일명 가져오기
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "Select fName from DDiary where imgID=" + imgID;
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();
            string fName = cmd.ExecuteScalar().ToString(); // 첫번째 값만 가져올 때
            con.Close();


            // 2) 해당 글 레코드 삭제하기: delete 문 실행
            string sql2 = "Delete from DDiary where imgID=" + imgID;
            cmd = new SqlCommand(sql2, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            // 3) 첨부파일 삭제하기
            if(fName != null)
            {
                FileInfo myFile = new FileInfo(Server.MapPath("~/Photos/") + fName);
                myFile.Delete();
            }
            Response.Redirect("List.aspx");
        }
    }
}