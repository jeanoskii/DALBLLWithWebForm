using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ThreeTier.DataAccess;
using ThreeTier.BusinessLogic;

namespace Machine_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            BLL LogIn = new BLL();
            DataTable dt = LogIn.Auth();
            if (dt.Rows.Count == 0)
            {
                Response.Redirect("LoginFailed.aspx");
            }
            else
            {
                if (txtPWinpt.Text == dt.Rows[0][1].ToString())
                {
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    Response.Redirect("LoginFailed.aspx");
                }
            }
        }
    }
}