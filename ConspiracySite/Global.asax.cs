using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace ConspiracySite
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //----אובייקט למונה מבקרים-----

            Application["counter"] = 0;


            //---------אוביקטים לשמירת הניקוד בסקר--------
            Application["q1"] = 0;
            Application["q2"] = 0;
            Application["q3"] = 0;
            Application["q4"] = 0;
        }
        //Session עבור כל משתמש בנפרד
        //שומר על הערך בכל הדפים,נגיד רק למשתמש מסויים 
        //אורך חיים קצר, תפ:לשמור מידע

        //פירטי שם המשתמש המחובר-שימוש:בשביל השם
        void Session_Start(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["userFName"] = "אורח";
            Session["voted"] = false; //אמת אם הצביע בסקר שקר אם לא 
            //maneger
            Session["admin"] = "no";
        }
        //פרטי המנהל-שימוש:האם הוא מחובר
        void Session_End(object sender, EventArgs e)
        {
            Session["uName"] = "אורח";
            Session["userFName"] = "אורח";
            Session["voted"] = false; //אמת אם הצביע בסקר שקר אם לא 
            //maneger
            Session["admin"] = "no";
        }
    }
}