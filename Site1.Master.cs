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


namespace Project001
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated) //로그인 상태인지 확인한다
            {
                Panel1.Visible = false;

                Panel2.Visible = true;
                
            }
            else
            {
                Panel1.Visible = true;

                Panel2.Visible = false;
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
            {
                FormsAuthentication.SignOut(); // 로그아웃 시켜줌
                Response.Redirect("Login.aspx"); //화면 갱신

            }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton7_Click1(object sender, ImageClickEventArgs e)
        {
            FormsAuthentication.SignOut(); // 로그아웃 시켜줌
            Response.Redirect("Login.aspx"); //화면 갱신
        }
    }
    }
