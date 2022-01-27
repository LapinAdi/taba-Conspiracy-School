<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="HomeP.aspx.cs" Inherits="ConspiracySite.HomeP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


      <meta charset="utf-8" />
    <title> דף ראשי </title>
    <style>
       

   

        h2 {
            color: #011910;
            text-align: center;
            font-size:50pt;
            font-weight:bolder ;
            font-style:oblique;
        }

        h3 {
            color: #264348;
             text-align: center;
            font-size: 25pt;
            font-weight: bold
        }

        p {
            color:  black;
            text-align: right;
            font-size: 20pt;
            font-weight: bold;
            margin-right:500px;
        }

        img {
            height: 200px
        }

        hr {
            width: 90%;
            color: whitesmoke;
        }

        body link {
        }
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     &nbsp; &nbsp; &nbsp;
        <div style="float: right;margin:50px;">
            <img src="pics/home%20page0.png" />

            <br/>
            
        </div> 
     
    
    &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:35px;"; >
            <img src="pics/home%20page1.jpg" />
         <br/>
         
        </div> 

    <h2>תאוריית קשר</h2>
    <br />
    <h3>אז מה זה בכלל?</h3>
    <p >
        תאוריית קשר (הנקראת גם תאוריית קונספירציה או טענת מזימה)<br />
         תאוריה המסבירה מצב או אירוע באופן מהפכני הנראה כסותר<br />
        את הממצאים הגלויים לעין<br />
        על-בסיס ההנחה שגורמים רבי-כח מסתירים את האמת ומונעים את חשיפתה לציבור.<br />
        תאוריות מסוג זה נדחות בדרך כלל על ידי רוב העוסקים בתחום<br />
        משום שתאוריה המבוססת על הממצאים באופן ישיר נראית סבירה יותר מן<br />
        ההנחה שאותם ממצאים עוותו על ידי התארגנות חשאית.<br />

        תאוריות קשר משגשגות כאשר המידע על ההתרחשויות לקוי בחסר או <br />
        שמקורות שונים לגביו סותרים זה את זה<br />
        אך ישנן תיאוריות קשר שאמיתותן הוכחה מעבר לכל ספק. <br />
        ותוכלו ללמוד הכל העליהם כאן הגורם העיקרי להופעתן של תאוריות קשר<br />
        הוא הניסיון להעניק הסבר נוח יותר<br />
        לאירועים או מצבים שההסבר הקיים להם אינו מספק או גורם לאי נוחות לרבים.<br /> 
    </p>



     <marquee body style="background-color:HighlightText">

        <div style=" font-size: 20pt; text-align:center;color:burlywood">
            <h1>
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />

                <a href="TenSteps.aspx"><img src="pics/10steps.png" style="height:70px;"/></a>

                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />

                <a href="galery.aspx"><img src="pics/galery.png" style="height:70px;" /></a>

                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
                <img src="pics/arrow.png" style="height:50px;margin-bottom:4px;" />
            </h1>
        </div>

    </marquee>
    <hr />



</asp:Content>
