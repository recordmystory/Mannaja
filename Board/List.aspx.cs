using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project001.Board
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string ShowDepth(int depth)
        {
            string result = "";
            for (int i = 0; i < depth; i++)
            {
                result += "&nbsp;&nbsp;&nbsp;"; // 빈칸 3개
            }
            return result;
        }
        protected string ShowReplyIcon(int inner_id)
        {
            string result = "";
            if (inner_id != 0)
            { 
                result = "<img width = 50px; src='/Images/reply_icon.PNG' />"; 
            }
            return result;
        }
        protected string ShowTitle(string seq, string title, string deleted)
        {
            string result = ""; if (deleted == "N")
            {  
                result = "<a href='Read.aspx?sn="+ seq + "'>"+ title + "</a>"; 
            }
            else
            {
                result = "삭제된 게시물입니다.";
            }
            return result;

            }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}