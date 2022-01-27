using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConspiracySite
{
    public partial class DeleteRcord : System.Web.UI.Page
    {
        public string
                           sqlDelete = "",

                           msg = "";  //מציג כמה רשומות מתאימות
                          
        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["admin"].ToString() == "no")
            {
                msg += "<div align = center><h3>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לדף ניהול";
                msg += "</h3>";
                msg += "<a href='HomeP.aspx'>HomeP.aspx</a>";
                msg += "</div>";
            }
            else
            {
                string uName = Request.QueryString["uName"].ToString();// לוקחים את המידע בשיטת GET

                string fileName = "user1DB.mdf";           //שם מסד הנתונים

                sqlDelete = "DELETE FROM usersTable WHERE uName ='" + uName + "'";

                Helper.DoQuery(fileName, sqlDelete);
            }
            Response.Redirect("DeleteUser.aspx");

        }
    }
}