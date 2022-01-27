using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConspiracySite
{
    public partial class ConspiracyM : System.Web.UI.MasterPage
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {

            //------מחרוזת הברכה------
            loginMsg = "<h1>שלום ";
            loginMsg += Session["userFName"].ToString();
            loginMsg += "</h1>";

            //תפריט מותאם


            /*

            if (Session["admin"] == "yes")
            {
                //מנהל
                loginMsg += "[<a href = 'managarP.aspx'>דף ניהול   </a><br />] ";

                

                


                loginMsg += "[<a href = 'LogOut.aspx'>התנתק</a><br />]";


            }
            else
            {

                if (Session["uName"] == "אורח")
                {   //מחובר לא 
                    loginMsg += "[<a href = 'LogIn.aspx'>התחבר</a>]<br />";
                    loginMsg += "[<a href = 'Register.aspx'>הרשם</a>]<br />";

                    //menuStr = menu + menuStr; מה זה?
                }
                else
                {
                    // מחובר
                    loginMsg += "[<a href = 'LogOut.aspx'>התנתק</a><br />]";
                }


            }

            */

        }
    }
}