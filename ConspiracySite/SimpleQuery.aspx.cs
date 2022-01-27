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
    public partial class SimpleQuery : System.Web.UI.Page
    {
        public string
                        sqlSelect = "",
                        st = "",    //מציג טבלת תוצאות
                        msg = "",   //מציג כמה רשומות מתאימות
                        sql = "";   //מציג את השאילתה
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div align = center><h3>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לדף ניהול";
                msg += "</h3>";
                msg += "<a href='HomeP.aspx'><img src='pics/back1.png' /></a>";
                msg += "</div>";
            }
            else
            {
                if (Request.Form["submit"] != null)
                {
                    //-------שמירת שם השדה וערך השדה שנבחרו--------
                    string field = Request.Form["field"];
                    string value = Request.Form["value"];

                    //--------שמירת שם מסד הנתונים ושם הטבלה  ----------
                    //יצירת משתנה שיכיל את שם מסד הנתונים
                    string fileName = "user1DB.mdf";

                    //יצירת משתנה שיכיל את שם הטבלה
                    string tableName = "usersTable";

                    if (field == "gender" || field == "prefix")
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = '" + value + "');";

                    else
                        if (field == "YearBorn")
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = " + value + ");";
                    else
                        if (field == "hobby")
                    {
                        var val = int.Parse(value);
                        switch (val)
                        {
                            case 1: field = "hob1"; break;
                            case 2: field = "hob2"; break;
                            case 3: field = "hob3"; break;
                            case 4: field = "hob4"; break;
                            case 5: field = "hob5"; break;
                        }
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = 'T');";
                    }
                    else
                        if (field == "email")
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " like '%" + value + "%');";
                    else
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " like N'" + value + "%');";

                    sql = sqlSelect;


                    //
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                    int length = table.Rows.Count;
                    if (length == 0)
                        msg = "לא נמצאו רשומות תואמות לחיפוש ";

                    else
                    {
                        //st += "<table>";

                        st += "<tr>";
                        st += "<th>שם משתמש</th>";
                        st += "<th>שם פרטי</th>";
                        st += "<th>שם משפחה</th>";
                        st += "<th>מייל</th>";
                        st += "<th>שנת לידה</th>";
                        st += "<th>מגדר</th>";
                        st += "<th>קידומת</th>";
                        st += "<th>טלפון</th>";
                        st += "<th>עיר</th>";
                        st += "<th>ספורט</th>";
                        st += "<th>מוזיקה</th>";
                        st += "<th>אומנות</th>";
                        st += "<th>סרטים וטלויזיה</th>";
                        st += "<th> כלום אני בן אדם משועמם בלי חיים</th>";
                        //st += "<th>סיסמא</th>";
                        st += "</tr>";

                        for (int i = 0; i < length; i++)
                        {
                            st += "<tr>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["uName"] + "</td>";
                            st += "<td>" + table.Rows[i]["fName"] + "</td>";
                            st += "<td>" + table.Rows[i]["lName"] + "</td>";
                            st += "<td style = 'text-align: left; width: 60;'>" + table.Rows[i]["email"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["gender"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["YearBorn"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["prefix"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["phone"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["city"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["hob1"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["hob2"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["hob3"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["hob4"] + "</td>";
                            st += "<td style = 'text-align: center;'>" + table.Rows[i]["hob5"] + "</td>";
                            // st += "<td style = 'text-align: center;'>" + table.Rows[i]["pw"] + "</td>";
                            st += "</tr>";
                        }
                    }

                }
            }
          
        }
    }
}