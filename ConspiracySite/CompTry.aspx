<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="CompTry.aspx.cs" Inherits="ConspiracySite.CompTry" %>
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
            border:5px  solid  white ;
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
         function detectField1() {
             if (document.getElementById("field1").value == "gender") {
                 document.getElementById("query1").innerHTML =
                     "<input type ='radio' name='value1' value='male' checked='checked'/>זכר" +
                     "<input type ='radio' name='value1' value='famale' />נקבה";

             }
             else {

                 if (document.getElementById("field1").value == "YearBorn" || document.getElementById("field1").value == "YearFrom")
                     {
                     var yearStr = "<select name='value1'><option value='0'>בחר שנה</option>";
                     var currYear = new Date().getFullYear();
                     var fromYear = currYear - 60;
                     var toYear = currYear - 10;

                     for (var i = fromYear; i < toYear; i++)
                         yearStr += "<option value='" + i + "'>" + i + "</option>\n";

                     document.getElementById("query1").innerHTML = yearStr + "</select>";
                 }
                 else {
                     if (document.getElementById("field1").value == "prefix") {

                         var prefixStr = "<select name ='value1' >";

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

                         document.getElementById("query1").innerHTML = prefixStr;

                     }
                     else {
                         if (document.getElementById("field1").value == "hobby") {
                             var hobbySrt = "<select name ='value1'>";

                             hobbySrt += " <option value ='1'>ספורט </options>";
                             hobbySrt += " <option value ='2'>מוזיקה </options>";
                             hobbySrt += " <option value ='3'>אומנות </options>";
                             hobbySrt += " <option value ='4'>סרטים וטלווזיה </options>";
                             hobbySrt += " <option value ='5'>כלום אני בן אדם משועמם בלי חיים </options>";
                             hobbySrt += "<select>";

                             document.getElementById("query1").innerHTML = hobbySrt;
                         }
                         else {

                             document.getElementById("query1").innerHTML = "<input type ='text' name ='value1'/>";
                         }

                     }
                 }
             }
         }
         //-------------------------------------------------------------------------------------------------------------------------------------
         function detectField2() {
             if (document.getElementById("field2").value == "gender") {
                 document.getElementById("query2").innerHTML =
                     "<input type ='radio' name='value2' value='male' checked='checked'/>זכר" +
                     "<input type ='radio' name='value2' value='famale' />נקבה";

             }
             else {

                 if (document.getElementById("field2").value == "YearBorn" || document.getElementById("field2").value == "YearTo") {
                     var yearStr = "<select name='value2'><option value='0'>בחר שנה</option>";
                     var currYear = new Date().getFullYear();
                     var fromYear = currYear - 60;
                     var toYear = currYear - 10;

                     for (var i = fromYear; i < toYear; i++)
                         yearStr += "<option value='" + i + "'>" + i + "</option>\n";

                     document.getElementById("query2").innerHTML = yearStr + "</select>";
                 }
                 else {
                     if (document.getElementById("field2").value == "prefix") {

                         var prefixStr = "<select name ='value2' >";

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

                         document.getElementById("query2").innerHTML = prefixStr;

                     }
                     else {
                         if (document.getElementById("field2").value == "hobby") {
                             var hobbySrt = "<select name ='value2'>";

                             hobbySrt += " <option value ='1'>ספורט </options>";
                             hobbySrt += " <option value ='2'>מוזיקה </options>";
                             hobbySrt += " <option value ='3'>אומנות </options>";
                             hobbySrt += " <option value ='4'>סרטים וטלווזיה </options>";
                             hobbySrt += " <option value ='5'>כלום אני בן אדם משועמם בלי חיים </options>";
                             hobbySrt += "<select>";

                             document.getElementById("query2").innerHTML = hobbySrt;
                         }
                         else {

                             document.getElementById("query2").innerHTML = "<input type ='text' name ='value2'/>";
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
                 <td style="width:20px">
                     <select name="field1" id="field1" onclick="detectField1();">
                        <option value="uName" >שם משתמש</option>
                        <option value="fName" >שם פרטי</option>
                        <option value="lName" >שם משפחה</option>
                        <option value="email" >אימייל</option>
                        <option value="YearBorn" >שנת לידה</option>
                         <option value="YearFrom" >משנה</option>
                        <option value="gender" >מגדר</option>
                        <option value="prefix" >קידומת</option>
                        <option value="phone" >טלפון</option>
                        <option value="city" >עיר</option>
                        <option value="hobby" >תחביב</option>
                      </select>
                 </td>
                 <td style="width:150px">
                     <div id ="query1"></div>
         <br /><br />
                 </td>
             </tr>
             <tr>
                 <td colspan ="2" style="text-align:center;direction:ltr;">
                     <input type ="radio" name="op" value="and" checked='checked' />AND
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                     <input type ="radio" name="op" value="or" />OR
                 </td>
             </tr>
             <tr>
                   <td style="width:20px">
                     <select name="field2" id="field2" onclick="detectField2();">
                        <option value="uName" >שם משתמש</option>
                        <option value="fName" >שם פרטי</option>
                        <option value="lName" >שם משפחה</option>
                        <option value="email" >אימייל</option>
                        <option value="YearBorn" >שנת לידה</option>
                          <option value="YearTo" >עד שנה </option>
                        <option value="gender" >מגדר</option>
                        <option value="prefix" >קידומת</option>
                        <option value="phone" >טלפון</option>
                        <option value="city" >עיר</option>
                        <option value="hobby" >תחביב</option>
                      </select>
                 </td>
                 <td style="width:150px">
                     <div id ="query2"></div>
         <br /><br />
                 </td>
             </tr>
             <tr>
                  <td colspan ="2" >
                     <input type="submit" name="submit" value="  שלח" />
                 </td>
             </tr>
         </table>

         </form>
      <h2 style="direction:ltr;text-align:center;"><% = sqlSelect%></h2>
    <table>
        <%= st %>
    </table>

</asp:Content>
