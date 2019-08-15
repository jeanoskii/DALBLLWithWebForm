using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using System.Data;
using ThreeTier.DataAccess;

namespace ThreeTier
{
    namespace BusinessLogic
    {
    class BLL
    {
        #region LogIn
        private string loginname;
        public string LogInName
        {
            get { return loginname; }
            set { loginname = value; }
        }
        private string loginpass;
        public string LogInPass
        {
            get { return loginpass; }
            set { loginpass = value; }
        }
        public DataTable Auth()
        {
            return DAL.GetData("SELECT * FROM UserAccounts WHERE Username = '" + loginname + "')");
        }
        #endregion
    }
    }
}