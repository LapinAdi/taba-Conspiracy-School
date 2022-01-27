<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ConspiracySite.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <title>הרשמה</title>
  
<style>
       

   

        h2 {
            color:midnightblue;
            text-align: right;
            font-size:x-large;
            font-weight: bold;
                  margin: 0px auto;
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
            font-size:  large;
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

    </style>

     <script>
         function chkForm() {

             //----שם משתמש קצר מדיי או לא קיים ----
             var uName = document.getElementById("uName").value;
             if (uName.length < 2) {
                 document.getElementById("mUName").value = " שם משתמש קצר מדי או לא קיים";
                 document.getElementById("mUName").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mUName").style.display = "none";

             // ------שם פרטי קצר מדיי או לא קיים-----
             var fName = document.getElementById("fName").value;
             // alert("fName= " +fName");
             if (fName.length < 2) {
                 document.getElementById("mFName").value = " שם  פרטי קצר מדי או לא קיים";
                 document.getElementById("mFName").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mFName").style.display = "none";

             // ------שם משפחה  קצר מדיי או לא קיים-----
             var lName = document.getElementById("lName").value;
             // alert("lName= " +lName");
             if (lName.length < 2) {
                 document.getElementById("mLName").value = " שם  משפחה קצר מדי או לא קיים";
                 document.getElementById("mLName").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mLName").style.display = "none";
             // ------דואל  קצר מדיי או לא קיים-----
             var email = document.getElementById("email").value;
             // alert("email= " +email");
             if (email.length < 2) {
                 document.getElementById("mEmail").value = " אימייל קצר מדי או לא קיים";
                 document.getElementById("mEmail").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mEmail").style.display = "none";
             //----------------בדיקת תקינות טלפון------------------------
             //~~~~~~~~~~~~~~~~~~~~~~~בדיקת קידומת~~~~~~~~~~~~~~~~~~~~~~~
             var prefix = document.getElementById("prefix").value;
             if (prefix == "בחר") {
                 document.getElementById("mPhone").value = "לא נבחרה קידומת";
                 document.getElementById("mPhone").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mPhone").style.display = "none";

             // ~~~~~~~~~~~~~~~~~~~~~~בדיקת שבע ספרות~~~~~~~~~~~~~~~~~~~~~~~
             var phone = document.getElementById("phone").value;
             if (phone.length != 7) {
                 document.getElementById("mPhone").value = "מספר טלפון חייב להכיל שבע ספרות";
                 document.getElementById("mPhone").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mPhone").style.display = "none";

             //~~~~~~~~~~~~~~~~~~~~~~~~~~בדיקה שיש רק ספרות~~~~~~~~~~~~~~~~~~~~~~~~
             if (isNaN(phone)) {
                 document.getElementById("mPhone").value = "מספר טלפון חייב להכיל רק ספרות";
                 document.getElementById("mPhone").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mPhone").style.display = "none";

             //---------------- עיר בדיקת תקינות ------------------------

             var city = document.getElementById("city").value;
             if (city == "בחר") {
                 document.getElementById("mCity").value = "לא נבחרה עיר";
                 document.getElementById("mCity").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mCity").style.display = "none";

             //-------------------------------------תחביבים בדיקת תקינות-----------------------------------------------------

             var hobies = document.getElementsByName("hob"); //--- במערך שסומנו האפשרויות שמירת
             var hobChecked = false;                        //אתחול משתנה ל - "שקר" -- -

             //  --- מעבר על המערך וחיפוש האפשרות שנבחרה-- -
             for (var i = 0; i < hobies.length; i++)
                 if (hobies[i].checked)
                     hobChecked = true;
             // --- אם לא נבחרה אפשרות - הצג הודעת שגיאה-- -
             if (hobChecked == false) {
                 document.getElementById("mHob").value = "תחביב נבחר לא";
                 document.getElementById("mHob").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mHob").style.display = "none";
             //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
             //---------------- סיסמא בדיקת תקינות ------------------------
             //alert();
             var pw = document.getElementById("pw").value;
             var pw1 = document.getElementById("pw1").value;

           

             if (pw.length < 6 || pw.length > 8) {

                 msg = "סיסמא צריכה להיות בין 6-8 תווים";
                 document.getElementById("mPw").value = msg;
                 document.getElementById("mPw").style.display = "inline";
                 return false;
             }
             else
                 document.getElementById("mPw").style.display = "none";



             //~~~~~~~~~~~~~~~בדיקת אימות סיסמא~~~~~~~~~~~~~~~
             if (pw != pw1) {
                 msg = "הסיסמא וסיסמת האימות אינם זהות ";
                 document.getElementById("mPw1").value = msg;
                 document.getElementById("mPw1").style.display = "inline";
                 msg = "";
                 return false;
             }
             else
                 document.getElementById("mPw").style.display = "none";
             /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

         }

     </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <h1>טופס רישום </h1>
    <form method="post" runat="server" onsubmit="return chkForm();">

         <table>
            <tr>
                <td> <h2>שם משתמש</h2> </td>
                <td><input type="text" id="uName" name="uName" /></td>
                <td> 
                    <input type="text" id="mUName" size="30"
                        style ="display:none;background-color:silver;font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
             <tr>
                <td> <h2>שם פרטי</h2> </td>
                <td><input type="text" id="fName" name="fName" /></td>
                 <td> 
                    <input type="text" id="mFName" size="30"
                        style ="display:none;background-color:silver;font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
             <tr>
                <td> <h2>שם משפחה</h2> </td>
                <td><input type="text" id="lName" name="lName" /></td>
                  <td> 
                    <input type="text" id="mLName" size="30"
                        style ="display:none;background-color:silver;font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
               <tr>
                <td>  <h2>כתובת דואל</h2></td>
                <td><input type="email" id="email" name="email" /></td>
                 <td> 
                    <input type="text" id="mEmail" size="30"
                        style ="display:none;background-color:silver;font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
              <tr>
                <td><h2>תאריך לידה</h2></td>
               <td>
                    <select name="yearBorn">
                      <%=yrBorn %>
                    </select>
                    <select name="monthBorn">
                      <%=mntBorn %>
                    </select>
                    <select name ="dayBorn">
                       <%=dyBorn %>
                    </select>
                </td>
            </tr>
              <tr >
            <td colspan = "2" >   <h2>מגדר:</h2> <input type="radio" name="gender" value = "male" checked>Male
                                <input type="radio" name="gender" value = "female">Female <BR> 

            </td>
            <td></td>
            
            </tr>
              <tr>
                <td><h2>טלפון:</h2></td>
                <td>
                      <select name="prefix" id="prefix">
                        <option value="בחר" selected>בחר</option>
                        <option value="050" >050</option>
                        <option value="052" >052</option>
                        <option value="053" >053</option>
                        <option value="054" >054</option>
                        <option value="055" >055</option>
                        <option value="057" >057</option>
                        <option value="058" >058</option>
                        <option value="02" >02</option>
                        <option value="03" >03</option>
                        <option value="04" >04</option>
                        <option value="08" >08</option>
                        <option value="09" >09</option>
                        <option value="077" >077</option>
                      </select>
                     <input type="text" name="phone" id="phone" />
                </td>
                <td>
                    <input type = "text" id = "mPhone" size = "30"  
                        style = "display: none; background-color: Silver; font-weight:bold;"  disabled = "disabled" />
                </td>
            </tr>
             <tr>
                <td><h2>עיר:</h2></td>
                <td>
                      <select name="city" id="city">
                        <option value="בחר" selected>בחר</option>
                        <option value="מודיעין" >מודיעין</option>
                        <option value="תל אביב" >תל אביב</option>
                        <option value="ירושלים" >ירושלים</option>
                        <option value="חיפה" >חיפה</option>
                        <option value="באר שבע" >באר שבע</option>
                        <option value="אחר" >אחר</option>
                       </select>
                </td>
                  <td>
                    <input type = "text" id = "mCity" size = "30"  
                        style = "display: none; background-color: Silver; font-weight:bold;"  disabled = "disabled" />
                </td>
                 <tr>
                <td> <h2>תחביב:</h2> </td>
                <td>
                    <input type = "checkbox" name = "hob" value = "1" />ספורט&nbsp;&nbsp;&nbsp;                    <input type = "checkbox" name = "hob" value = "2" />מוזיקה&nbsp;&nbsp;&nbsp;
                    <input type = "checkbox" name = "hob" value = "3" />אומנות&nbsp;&nbsp;&nbsp;
                    <input type = "checkbox" name = "hob" value = "4" />סרטים וטלווזיה&nbsp;&nbsp;&nbsp;
                    <input type = "checkbox" name = "hob" value = "5" />כלום אני בן אדם משועמם בלי חיים&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <input type = "text" id = "mHob" size = "30"
                        style = "display: none; background-color: Silver; font-weight:bold;"
                            disabled = "disabled" />
                </td>
            </tr>
               <tr>
                <td> <h2>סיסמא</h2> </td>
                <td><input type="text" id="pw" name="pw" /></td>
                <td> 
                    <input type="text" id="mPw" size="30"
                        style ="display:none;background-color:silver;font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
              <tr>
                <td> <h2>סיסמא אימות</h2></td>
                <td><input type="text" id="pw1" name="pw1" /></td>
                <td> 
                    <input type="text" id="mPw1" size="30"
                        style ="display:none;background-color:silver;font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
             
            <tr style="text-align:center">
                
                <td colspan="2">
                     
                    <br />
                    <input type="submit" name="submit" value="  שלח" />
                </td>
            </tr>

        </table>


            <br />
      <br />
       
      <br />
        <%= st %>


      <h3 style="direction:ltr;"><%=sqlSelect %></h3>  
      <h3><%=msg %></h3>  
        <h3 style="direction:ltr;"><%=sqlInsert %></h3>
        <h3>   <%=sqlMsg %></h3>

     


    </form>




</asp:Content>
