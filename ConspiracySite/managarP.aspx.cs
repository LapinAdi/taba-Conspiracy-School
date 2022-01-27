using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConspiracySite
{
    public partial class managarP : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"].ToString()=="no")
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
                msg += " <h2><a href='ShowTable.aspx'><img src='pics/menu/ShowTable0.png' style ='height:70px;width:210px;margin:10px'/></a></h2>";
                msg += " <h2><a href='SimpleQuery.aspx'><img src='pics/menu/SimpleQuery0.png' style ='height:70px;width:210px;margin:10px'/></a></h2>";
                msg += "<h2><a href='ComplexQuery.aspx'><img src='pics/menu/ComplexQuery0.png'style ='height:70px;width:210px;margin:10px' /></a></h2>";

                msg += "</br></br>";
                msg += "<h2><a href='DeleteUser.aspx'><img src='pics/menu/DeleteUser0.png'style ='height:70px;width:210px;margin:10px' /></a></h2>";
            }

        }
    }
}