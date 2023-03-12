using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //추가
using System.Data;
using System.Configuration;

namespace proj03
{
    public partial class NoteList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Text = Page.User.Identity.Name; //로그인아이디
                //Label3.Text = "hyeon"; //임시로 (나중에 삭제)
                TextBox1.Text = Label3.Text;
            }
        }

        protected string GetContent(object content)
        {
            string ss = content.ToString();
            ss = ss.Replace("\n", "<br />");
            return ss;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (TextBox3.TextMode == TextBoxMode.SingleLine)
            {
                TextBox3.TextMode = TextBoxMode.MultiLine;
                TextBox3.Rows = 5;
            }
            else
            {
                TextBox3.TextMode = TextBoxMode.SingleLine;
                TextBox3.Rows = 1;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string user = Page.User.Identity.Name; //로그인한 아이디
           // user = "hyeon"; //임시 (나중에 삭제)

            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = @"Insert into MMemo (userID, name, content) Values(@userID, @name, @content);";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@userID", user);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
           // cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@content", TextBox3.Text);

            con.Open();
            int num = cmd.ExecuteNonQuery();
            con.Close();
            DataList1.DataBind(); //화면 갱신
            TextBox3.Text = "";
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string ss = e.CommandArgument.ToString();

            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = @"Delete from MMemo Where nID=@nID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@nID", ss);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataList1.DataBind();
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) {
                Label lbl = (Label)e.Item.FindControl("Label1");
                LinkButton btn = (LinkButton)e.Item.FindControl("LinkButton1");

                if (lbl.Text == Label3.Text) //로그인 계정과 일치?
                    btn.Visible = true;
                else
                    btn.Visible = false;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}