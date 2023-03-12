using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO; //파일 저장 관련

namespace Project001
{
    public partial class Visit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Page.User.Identity.Name;
            Label10.Text = user;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string seq = Request.QueryString["sn"];
;            Response.Redirect("VisitWrite.aspx?sn=" + seq);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList2_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int ss = int.Parse(e.CommandArgument.ToString());

            //연결
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "delete from visit where seq=@seq";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@seq", ss);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            DataList2.DataBind();
        }

        protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if ((e.Item.ItemType==ListItemType.Item) || (e.Item.ItemType==ListItemType.AlternatingItem))
            {
                LinkButton btn = (LinkButton)e.Item.FindControl("LinkButton1");
                Label lbl = (Label)e.Item.FindControl("Label11");
                if (lbl.Text == Label10.Text)
                    btn.Visible = true;
                else
                    btn.Visible = false;
            }
        }
    }
}