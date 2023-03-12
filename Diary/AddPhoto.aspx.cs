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
    public partial class AddPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    
        private FileInfo NewFileName(FileInfo myFile)
        {
            int num = 0;
            string fileName = "";
            string fName = myFile.Name.Substring(0, (myFile.Name.Length - myFile.Extension.Length));
            string fExtension = myFile.Extension;
            do
            {
                num++;
                fileName = fName + "_" + num + fExtension;
                myFile = new FileInfo(Server.MapPath("~/Photos/") + fileName);
            } while (myFile.Exists);
            return myFile;
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            string fName = "";
            //업로드한 파일명 가져오고, 파일 저장하기
            if (FileUpload1.HasFile == false)
            {
                Label1.Text = "사진을 첨부해 주세요.";
            }
            else
            {
                fName = FileUpload1.FileName;
                FileInfo myFile = new FileInfo(Server.MapPath("~/Photos/") + fName);
                if (myFile.Exists)
                {
                    myFile = NewFileName(myFile);
                    fName = myFile.Name;
                }
                FileUpload1.SaveAs(myFile.FullName); //파일을 실제로 저장
                //DB 테이블에 insert하기
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                string sql = @"Insert into DDiary(userID, title, body, name, pwd, fName) values(@userID, @title, @body, @name, @pwd, @fName)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@userID", Page.User.Identity.Name);
                cmd.Parameters.AddWithValue("@title", TextBox1.Text);
                cmd.Parameters.AddWithValue("@body", TextBox2.Text);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@pwd", TextBox4.Text);
                cmd.Parameters.AddWithValue("@fName", fName);
                //실행 및 이동 또는 화면표시
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("List.aspx");
            }
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("List.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}