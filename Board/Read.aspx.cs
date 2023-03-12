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
    public partial class Read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string seq = Request.QueryString["sn"];

                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                string sql = "Update board01 Set hit = hit + 1 Where seq = " + seq;
                SqlCommand cmd = new SqlCommand(sql, con);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                string sql2 = "Select * From board01 Where seq = " + seq;
                SqlCommand cmd2 = new SqlCommand(sql2, con);
                
                con.Open();
                SqlDataReader rd = cmd2.ExecuteReader();

                if (rd.Read())
                {
                    Label1.Text = rd["name"].ToString();
                    Label2.Text = string.Format("{0:yyyy-MM-dd HH:mm}", (DateTime)rd["wDate"]);
                    Label3.Text = rd["title"].ToString();
                    TextBox4.Text = rd["body"].ToString();

                    LinkButton1.Text = rd["fName"].ToString();
                    Label4.Text = rd["fSize"].ToString() + " bytes";
                    Label5.Text = "(download hit : " + rd["hitDown"].ToString() + ")";

                    if (LinkButton1.Text == "")
                    {
                        Label4.Visible = false;
                        Label5.Visible = false;
                    }

                    else
                    {
                        Label4.Visible = true;
                        Label5.Visible = true;
                    }
                    ImageButton1.PostBackUrl = "CheckPassword.aspx?mode=edit&sn=" + rd["seq"].ToString();
                    ImageButton3.PostBackUrl = "Reply.aspx?sn=" + rd["seq"].ToString() + "&title=" + rd["title"].ToString();
                    ImageButton4.PostBackUrl = "CheckPassword.aspx?mode=del&sn=" + rd["seq"].ToString();
                }
                rd.Close();
                con.Close();
            }
        }

     
        private void SendFile(string fullName, string name)
        {
            Response.AddHeader("Content-Disposition", "attachment;filename=" + HttpUtility.UrlPathEncode(name));
            Response.ContentType = "multipart/form-data";
            Response.WriteFile(fullName);
            Response.End();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "Update board01 set hitDown = hitDown+1 Where seq = " + Request.QueryString["sn"];
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            SendFile(Server.MapPath("~/Uploads/") + LinkButton1.Text, LinkButton1.Text);
        }
    }
}