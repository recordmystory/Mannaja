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
using System.IO;

namespace Project001.Board
{
    public partial class Write : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            
            string sql = @"Insert into board01(name, pwd, title, body, wDate, fName, fSize)
			                    Values (@name, @pwd, @title, @body, getDate( ), @fName, @fSize);";
            
            SqlCommand cmd = new SqlCommand(sql, con);
            
            string hashPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "sha1");
            
            string fileName = "";
            int fileSize = 0;

            if (FileUpload1.HasFile)
            {
                fileName = FileUpload1.FileName;
                FileInfo myFile = new FileInfo(Server.MapPath("~/Uploads/" + fileName));
                if (myFile.Exists)
                {
                    myFile = NewFileName(myFile);
                    fileName = myFile.Name;
                }
                FileUpload1.SaveAs(myFile.FullName);
                fileSize = FileUpload1.PostedFile.ContentLength;
                }
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pwd", hashPwd);
                cmd.Parameters.AddWithValue("@title", TextBox3.Text);
                cmd.Parameters.AddWithValue("@body", TextBox4.Text);
                cmd.Parameters.AddWithValue("@fName", fileName);
                cmd.Parameters.AddWithValue("@fSize", fileSize);

                con.Open();
             cmd.ExecuteNonQuery();
             con.Close();

               string sql2 = @"Update board01 Set ref_id = seq Where ref_id = 0 ";
              SqlCommand cmd2 = new SqlCommand(sql2, con);

              con.Open();
              cmd2.ExecuteNonQuery();
             con.Close();
             Response.Redirect("~/Board/List.aspx");
        }
        private FileInfo NewFileName(FileInfo myFile)
        {
            int num = 0;
            string fileName = "";
            string fName = myFile.Name.Substring(0, (myFile.Name.Length - myFile.Extension.Length));
            string fExtension = myFile.Extension;

            do
            {
                num++; fileName = fName + "_" + num + fExtension;
                myFile = new FileInfo(Server.MapPath("~/Uploads/") + fileName);
            } while (myFile.Exists);

            return myFile;
        }
    }
}