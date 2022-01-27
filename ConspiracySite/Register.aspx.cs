using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;

namespace ConspiracySite
{
    public partial class Register : System.Web.UI.Page
    {
        public string st = "", yrBorn = "", dyBorn = "", mntBorn = "", sqlMsg="",msg="", sqlSelect="", sqlInsert="";
        protected void Page_Load(object sender, EventArgs e)
        {

            //-------------יצירת מחרוזת לשנת לידה------------------
            int year = DateTime.Now.Year;
            int from = year - 30;
            int to = year - 10;

            //-------------------------הצגת כל השנים בתחום---------
            int selectedYear = year - 16;


            for (int y = from; y < to; y++)
            {
                if (y == selectedYear)
                    yrBorn += "<option value ='" + y + "' selected>" + y + "</option>";
                else
                    yrBorn += "<option value ='" + y + "' >" + y + "</option>";
            }

            //----------יצירת מחרוזת יום בחודש-----------------------
            for (int i = 1; i <= 31; i++)
            {
                dyBorn += "<option value ='" + i + "'>" + i + "</option>";
            }

            //--------------------- יצירת מחרוזות עבור החודש---------------------------
            string[] month = { "ינואר", "פברואר", "מרץ", "אפריל", "מאי", "יוני", "יולי", "אוגוסט", "ספטמבר", "אוקטובר", "נובמבר", "דצמבר" };
            for (int i = 0; i < month.Length; i++)
            {
                mntBorn += "<option value ='" + month[i] + "'>" + month[i] + "</option>";
            }




            //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

            if (Request.Form["submit"] != null)
            {


                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string mail = Request.Form["email"];

                string dayBorn = Request.Form["dayBorn"];
                string monthBorn = Request.Form["monthBorn"];
                string yearBorn = Request.Form["yearBorn"];

                //המרת שנת לידה למספר
                int yBorn = int.Parse(yearBorn);

                string gender = Request.Form["gender"];

                string phone = Request.Form["phone"];
                string prefix = Request.Form["prefix"];

                string city = Request.Form["city"];

                string hob = Request.Form["hob"].ToString();
                //
                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                char hob5 = 'F';

                //---בדיקה :האם מחרוזת של התחביבים מכילה את הערכים 1-5----
                if (hob.Contains('1')) hob1 ='T';
                if (hob.Contains('2')) hob1 ='T';
                if (hob.Contains('3')) hob1 ='T';
                if (hob.Contains('4')) hob1 ='T';
                if (hob.Contains('5')) hob1 ='T';

                string pw = Request.Form["pw"];

                string pw1 = Request.Form["pw1"];

                //טבלה

                st += "<table dir = 'ltr'  border = ' 1px solid white' align = 'center' > ";
                st += "<tr><th colspan='2'> הפריטים שהתקבלו</th></tr>";

                st += "<tr><td> user name : </td><td align ='center'  >" + uName + "</td></tr>";
                st += "<tr><td> first name: </td><td align ='center'  >" + fName + "</td></tr>";
                st += "<tr><td> last name : </td><td align ='center'  >" + lName + "</td></tr>";
                st += "<tr><td> email :     </td><td align ='center'  >" + mail  + "</td></tr>";
                st += "<tr><td> Birth :     </td><td align ='center'  >" + monthBorn + dayBorn + " , " + yearBorn + "</td></tr>";
                st += "<tr><td> gendr:      </td><td align ='center'  >" + gender + "</td></tr>";
                st += "<tr><td> phone:      </td><td align ='center'  >" + prefix + " - " + phone + " </td> </tr>";
                st += "<tr><td> city:       </td><td align ='center'  >" + city  + "</td></tr>";
                st += "<tr><td> hob:        </td><td align ='center'  >" + hob   + "</td></tr>";
                st += "<tr><td> pw:         </td><td align ='center'  >" + pw    + "</td></tr>";
                st += "<tr><td> pw1:        </td><td align ='center'  >" + pw1   + "</td></tr>";
                
                st += "</table>";

                
                //יצירת משתנה שיכיל את שם מסד הנתונים
                string fileName = "user1DB.mdf";

                //יצירת משתנה שיכיל את שם הטבלה
                string tableName = "usersTable";

                //בדיקה האם משתמש קיים?
                sqlSelect ="SELECT * FROM " + tableName + " WHERE uName = '"+ uName +"'" ;


                //ם קיימת בטבלת רשומה עם שם/מַ פְ תֵ ח זה
                //נציג הודעה המודיעה למשתמש
                //ששם המשתמש תפוס ועליו לבחור שם משתמש אחר
                
                
                if (Helper.IsExist(fileName,sqlSelect))
                {
                     msg = " user name has been taken";
                    sqlMsg = sqlSelect;

                }
                
                else
                {
                    //עובד עד פה

                    //הוספת רשומה לטבלה
                    
                    sqlInsert = $"INSERT INTO {tableName} VALUES (";

                    sqlInsert += $"'{uName}', N'{fName}', N' {lName}', ";
                    sqlInsert += $"'{mail}', {yBorn}, ";
                    sqlInsert += $"'{gender}', '{prefix}', '{phone}', N'{city}', '{hob1}', ";
                    sqlInsert += $"'{hob2}' ,'{hob3}', '{hob4}', '{hob5}', '{pw}')";
                    sqlMsg = sqlInsert;

                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "הרשומה התווספה בהצלחה";

                    
                }
                  
                


            }


        }
    }
}