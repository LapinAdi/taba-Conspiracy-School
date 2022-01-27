<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="SpaceNaliens.aspx.cs" Inherits="ConspiracySite.SpaceNaliens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>חלל וחייזרים </title>
    <style>
       

   
        h2 {
            color: #5c0302;
            text-align: right;
            font-size:   xx-large;
            font-weight: bold
        }

        h3 {
            color: antiquewhite;
            
            font-size: large;
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

    <h1> חלל וחייזרים</h1>
    <hr />
     &nbsp; &nbsp; &nbsp;
        

     <div style="float: right;margin:35px;">
         <a href="LandingOnMoon.aspx">
             <img src="pics/landing%20moon0.jpg" /><br/>
                <h1>---נחיתה על הירח-----</h1>
         </a>
            </div>

      &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:35px;"; >
            <a href="LizardPeople.aspx">
                <img src="pics/Lizard%20people0.png" /> <br/>
                <h1>----אנשי לטאה----</h1>
            </a>
        </div> 
    
    
 
   <br/><br/><br/><br/><br/><br/>
     
       
    <div style="text-align: center;">
        
        <a href="ScienceNtechnology.aspx">
            <img src="pics/back1.png"style="height: 130px;" />
        </a>

    </div>

      &nbsp; &nbsp; &nbsp;
        <div style="text-align: center; margin:35px;"; >
            <a href="Area51.aspx">
                <img src="pics/Area51%200.png" /><br/>
                <h1>----אזור  51----</h1>
            </a>
        </div> 
 
</asp:Content>

