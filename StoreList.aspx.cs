using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project001
{
    public partial class StoreList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string GoList(object seq)
        {
            string snum = seq.ToString();
            string ss="Visit.aspx?sn="+snum+"";

            return ss;
        }
    }
}