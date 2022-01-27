using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;//קישור למסד נתונים

namespace ConspiracySite
{
    public partial class LogIn : System.Web.UI.Page
    {
        public string  msg = "", sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["submit"] != null)
            {

                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];

                string fileName = "user1DB.mdf";           //שם מסד הנתונים
                string tableName = "usersTable";                //שם הטבלה

                sqlSelect = "SELECT * FROM " + tableName +
                    " WHERE uName ='" + uName + "' AND pw = '" + pw + "'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);//מקשר בין שרת ומסד נתונים

                int length = table.Rows.Count;
                
                if (length == 0)
                {
                    msg = "משתמש לא נמצא";
                    Response.Redirect("LogIn.aspx");
                }
                else
                {
                    //עדכון מונה מבקרים

                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    Session["uName"] = table.Rows[0]["uName"];
                    Session["userFName"] = table.Rows[0]["fName"];
                    Response.Redirect("HomeP.aspx");

                }

            }

        }
    }
}