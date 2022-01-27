using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;//קישור למסד נתונים

namespace ConspiracySite
{
    public partial class ShowTable : System.Web.UI.Page
    {

        public string st = "",msg="", sqlSelect="";
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
                string fileName = "user1DB.mdf";           //שם מסד הנתונים
                string tableName = "usersTable";                //שם הטבלה
                sqlSelect = "SELECT * FROM " + tableName; //


                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);//מקשר בין שרת ומסד נתונים

                int length = table.Rows.Count;
                msg = " נמצאו " + length + " רשומות ";

                if (length == 0)
                    msg = "אין נרשמים";
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