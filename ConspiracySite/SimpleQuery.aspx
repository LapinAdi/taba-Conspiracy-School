<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="SimpleQuery.aspx.cs" Inherits="ConspiracySite.SimpleQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
       

   

        h2 {
            color: #5c0302;
            text-align: right;
            font-size:   30pt;
            font-weight: bold
        }

        h3 {
            color: antiquewhite;
             text-align: center;
            font-size: xx-large;
            font-weight: bold
        }

        p {
            color: #002400;
            text-align: right;
            font-size:  x-large;
            font-weight: bold
        }

        img {
            height: 150px
        }

        hr {
            width: 90%;
            color: whitesmoke;
        }

        body link {
        }

        input { text-align: center; }
        table{
            
            margin: 0px auto;
            border:1px  solid  white ;
        }
         th
        {
            border: 1px solid white;
             padding: 10px;
        }    
        td 
        {
            border: 1px solid white;
             padding: 10px;
        }

    </style>

    <script>
        function detectField()
        {
            if (document.getElementById("field").value == "gender") {
                document.getElementById("query").innerHTML =
                    "<input type ='radio' name='value' value='male' checked='checked'/>זכר" +
                    "<input type ='radio' name='value' value='female' />נקבה";

            }
            else
            {
                
                if (document.getElementById("field").value == "YearBorn") {
                    var yearStr = "<select name='value'><option value='0'>בחר שנה</option>";
                    var currYear = new Date().getFullYear();
                    var fromYear = currYear - 60;
                    var toYear = currYear - 10;

                    for (var i = fromYear; i < toYear; i++)
                        yearStr += "<option value='" + i + "'>" + i + "</option>\n";

                    document.getElementById("query").innerHTML = yearStr + "</select>";
                }
                else
                {
                    if (document.getElementById("field").value == "prefix") {

                        var prefixStr = "<select name ='value' >";

                        prefixStr += "<option value='050' >050</option>";
                        prefixStr += "<option value='052' >052</option>";
                        prefixStr += "<option value='053' >053</option>";
                        prefixStr += "<option value='054' >054</option>";
                        prefixStr += "<option value='055' >055</option>";
                        prefixStr += "<option value='057' >057</option>";
                        prefixStr += "<option value='058' >058</option>";
                        prefixStr += "<option value='02' >02</option>";
                        prefixStr += "<option value='03' >03</option>";
                        prefixStr += "<option value='04' >04</option>";
                        prefixStr += "<option value='08' >08</option>";
                        prefixStr += "<option value='09' >09</option>";
                        prefixStr += " <option value='077' >077</option>";

                        prefixStr += "</select>";

                        document.getElementById("query").innerHTML = prefixStr;

                    }
                    else
                    {
                        if (document.getElementById("field").value == "hobby") {
                            var hobbySrt = "<select name ='value'>";

                            hobbySrt += " <option value ='1'>ספורט </options>";
                            hobbySrt += " <option value ='2'>מוזיקה </options>";
                            hobbySrt += " <option value ='3'>אומנות </options>";
                            hobbySrt += " <option value ='4'>סרטים וטלווזיה </options>";
                            hobbySrt += " <option value ='5'>כלום אני בן אדם משועמם בלי חיים </options>";
                            hobbySrt += "<select>";

                            document.getElementById("query").innerHTML = hobbySrt;
                        }
                        else
                        {
                          
                                document.getElementById("query").innerHTML = "<input type ='text' name ='value'/>";
                        }
                           
                    }
                }
            }
        }
       
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <h1>הצגת נתונים לפי חתך</h1>
     <form method="post" runat="server" >
         <table>
             <tr>
                 <td>

                      <select name="field" id="field" onclick="detectField();">
                        <option value="uName" >שם משתמש</option>
                        <option value="fName" >שם פרטי</option>
                        <option value="lName" >שם משפחה</option>
                        <option value="email" >אימייל</option>
                        <option value="YearBorn" >שנת לידה</option>
                        <option value="gender" >מגדר</option>
                        <option value="prefix" >קידומת</option>
                        <option value="phone" >טלפון</option>
                        <option value="city" >עיר</option>
                        <option value="hobby" >תחביב</option>
                      </select>
                        <br /><br />
         <div id ="query"></div>
         <br /><br />
                 </td>
                 
             </tr>
             <tr>
                 <td>
                     <input type="submit" name="submit" value="  שלח" />
                 </td>

             </tr>
         </table>
                   
          

         </form>

   
     <h2 style="direction:ltr;text-align:center;"><% = sql %></h2>

    <h2> <%= msg %></h2>

    <table border="1">
        <%= st %>
    </table>
</asp:Content>
