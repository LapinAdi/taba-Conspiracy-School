using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConspiracySite
{
    public partial class CultureQuestions : System.Web.UI.Page
    {
        public string str = "",survey="";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if ((bool)Session["voted"])
            //{
                //survey = "הנך רשאי להצביע פעם אחת בלבד";
            //}            
           //else
            //{

                if (Request.Form["send"] != null)
                {
                    Session["voted"] = true;
                    
                        str += "<h1>תוצאות הסקר</h1>";

                        string ans = Request.Form["surv"];

                        if (ans == "1")
                            Application["q1"] = (int)Application["q1"] + 1;
                        if (ans == "2")
                            Application["q2"] = (int)Application["q2"] + 1;
                        if (ans == "3")
                            Application["q3"] = (int)Application["q3"] + 1;
                        if (ans == "4")
                            Application["q4"] = (int)Application["q4"] + 1;

                        //---------סך הקולות שקיבלה כל אפשרות-----------

                        int[] s = new int[4];

                        s[0] = (int)Application["q1"];
                        s[1] = (int)Application["q2"];
                        s[2] = (int)Application["q3"];
                        s[3] = (int)Application["q4"];

                        //---------קביעת גודל הגרף לכל אפשרות-----------
                        int width = 10;

                        double[] w = new double[4];
                        for (int i = 0; i < w.Length; i++)
                            w[i] = s[i] * width;


                        //בדיקת נכונות
                        str += "s1= " + s[0] + ", s2 = " + s[1] + ", s3 = " + s[2] + ",s4 = " + s[3] + "<br>";


                    str += "<table border='1' dir ='ltr'>";

                    str += "<tr><td  align = 'center'>I</td>";
                    str += "<td  width='500' ><img src='pics/survery/red.png' align = 'left' height='30'  width= '" + w[0] + "'> </td></tr>";

                    str += "<tr><td  align = 'center'>II</td>";
                    str += "<td  width='500'><img src='pics/survery/yellow.png' align = 'left' height='30' width= '" + w[1] + "'> </td></tr>";

                    str += "<tr><td  align = 'center'>III</td>";
                    str += "<td  width='500'><img src='pics/survery/green.png' align = 'left' height='30' width= '" + w[2] + "'> </td></tr>";

                    str += "<tr><td  align = 'center'>IV</td>";
                    str += "<td  width='500'><img src='pics/survery/blue.png' align = 'left' height='30' width= '" + w[3] + "'> </td></tr>";

                    str += "</table>";
                }

                
            //}
        }
     }
            
}
