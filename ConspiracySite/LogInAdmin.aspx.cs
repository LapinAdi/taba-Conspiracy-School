using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;//קישור למסד נתונים

namespace ConspiracySite
{
    public partial class LogInAdmin : System.Web.UI.Page
    {
        public string msg = "", sqlAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string name = Request.Form["mName"];
                string pw = Request.Form["mpw"];


                string fileName = "user1DB.mdf";           //שם מסד הנתונים

                sqlAdmin = " SELECT * FROM managerTbl WHERE ( mName = '" + name + "' AND pw = '" + pw + "')";
                
                DataTable table = Helper.ExecuteDataTable(fileName, sqlAdmin);//מקשר בין שרת ומסד נתונים



                int length = table.Rows.Count;

                if (length == 0)
                {
                    msg = "< div style ='text-align: center;'>";
                    msg += "<h3>אינך המנהל,אין לך הרשאה לצפות בדף הזה</h3>";
                    msg += "< a href='LogIn.aspx'>[המשך]</a>"; //החלטתי לנתב אחרת להתחברות משתמש
                    msg += "</div>";
                }
                else
                {
                    
                    Session["userFName"] = "מנהל";
                    Session["admin"] = "yes";
                    Response.Redirect("HomeP.aspx");       //החלתטי לנתב לדף הבית,לא הייתי בטוחה לאן הכי הגיוני לנתב 
                    //בסוף ניתבתי לדף ניהול שבו כל הלינקים
                    //Response.Redirect("managerP.aspx");
                

                }
                
            }  


        }
    }
}