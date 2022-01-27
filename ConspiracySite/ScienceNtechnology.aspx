<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="ScienceNtechnology.aspx.cs" Inherits="ConspiracySite.ScienceNtechnology" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>מדע וטכנולוגיה </title>
    <style>
       

   
        h2 {
            color: #5c0302;
            text-align: right;
            font-size:   xx-large;
            font-weight: bold
        }

         h3 {
            color: #264348;
             text-align: center;
            font-size: 25pt;
            font-weight: bold
        }

        p {
            color: #002400;
            text-align: right;
            font-size:  large;
            font-weight: bold
        }

        img {
            height: 200px
        }

        hr {
            width: 90%;
            color: whitesmoke;
        }
        div{text-align:center}

       
        
        
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <h1> מדע וטכנולוגיה</h1>
    <hr />

    
     &nbsp; &nbsp; &nbsp;
        

     <div style="float: right;margin:35px;">
           
         <a href="SpaceNaliens.aspx">
             <img src="pics/Space%20and%20aliens.png" /><br/>
                <h1>---חלל וחיזרים-----</h1>
         </a>
            </div>

      &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:35px;"; >
            <a href="ImportantPersonalities.aspx">
                <img src="pics/Important%20personalities.png" /><br/>
                <h1>----אישיות חשובות----</h1>
            </a>
        </div> 

    &nbsp; &nbsp; &nbsp;
        <div style="text-align: center; margin:35px;"; >
            <a href="UpToDate.aspx">
                <img src="pics/up%20to%20date.jpg" /><br/>
                <h1>----עדכני----</h1>
            </a>
        </div> 

</asp:Content>
