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
    public partial class CompTry : System.Web.UI.Page
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
                msg += "<a href='HomeP.aspx'>HomeP.aspx</a>";
                msg += "</div>";
            }
            else
            {

                if (Request.Form["submit"] != null)
                {
                    //-------שמירת שם השדה וערך השדה שנבחרו--------
                    string field1 = Request.Form["field1"];
                    string value1 = Request.Form["value1"];

                    string field2 = Request.Form["field2"];
                    string value2 = Request.Form["value2"];

                    string op = Request.Form["op"];

                    //--------שמירת שם מסד הנתונים ושם הטבלה  ----------
                    //יצירת משתנה שיכיל את שם מסד הנתונים
                    string fileName = "user1DB.mdf";

                    //יצירת משתנה שיכיל את שם הטבלה
                    string tableName = "usersTable";

                    string qry1 = "", qry2 = "";

                    //--------------1---------------
                    if (value1 != null)
                    {
                        if (field1 == "gender" || field1 == "prefix")
                            qry1 = field1 + " = '" + value1 + "'";
                        else if (field1 == "YearBorn")
                            qry1 = field1 + " = " + value1;
                        else if (field1 == "YearFrom")
                            qry1 = "YearBorn" + " >= " + value1;
                        else if (field1 == "hobby")
                        {
                            var val1 = int.Parse(value1);
                            switch (val1)
                            {
                                case 1: field1 = "hob1"; break;
                                case 2: field1 = "hob2"; break;
                                case 3: field1 = "hob3"; break;
                                case 4: field1 = "hob4"; break;
                                case 5: field1 = "hob5"; break;
                            }
                            qry1 = field1 + " = 'T'";
                        }
                        else if (field1 == "email")
                            qry1 = field1 + " like '%" + value1 + "%'";
                        else
                            qry1 = field1 + " like N'" + value1 + "%'";
                    }
                    //------------------2--------------------------------
                    if (value2 != null)
                    {
                        if (field2 == "gender" || field2 == "prefix")
                            qry2 = field2 + " = '" + value2 + "'";
                        else if (field2 == "YearBorn")
                            qry2 = field2 + " = " + value2;
                        else if (field2 == "YearTo")
                            qry2 = "YearBorn" + " >= " + value2;
                        else if (field2 == "hobby")
                        {
                            var val2 = int.Parse(value2);
                            switch (val2)
                            {
                                case 1: field2 = "hob1"; break;
                                case 2: field2 = "hob2"; break;
                                case 3: field2 = "hob3"; break;
                                case 4: field2 = "hob4"; break;
                                case 5: field2 = "hob5"; break;
                            }
                            qry2 = field2 + " = 'T'";
                        }
                        else if (field2 == "email")
                            qry2 = field2 + " like '%" + value2 + "%'";
                        else
                            qry2 = field2 + " like N'" + value2 + "%'";
                    }

                    //
                    if (qry1 != "" || qry2 != "")
                    {
                        //simple
                        if (qry1 != "" && qry2 == "")
                            sqlSelect = "SELECT * FROM " + tableName + " where (" + qry1 + ");";
                        else
                        {
                            if (qry1 == "" && qry2 != "")
                                sqlSelect = "SELECT * FROM " + tableName + " where (" + qry2 + ");";
                            else
                            {
                                if (op == "and")
                                    sqlSelect = "SELECT * FROM " + tableName + " where (" + qry1 + " AND " + qry2 + ");";
                                else
                                    sqlSelect = "SELECT * FROM " + tableName + " where (" + qry1 + " OR " + qry2 + ");";
                            }
                        }
                        sql = sqlSelect;


                    }




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