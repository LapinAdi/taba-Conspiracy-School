<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="CultureNSociety.aspx.cs" Inherits="ConspiracySite.CultureNSociety" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


      <title> תרבות וחברה </title>
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


    <h1> קונספירציות בנושא תרבות וחברה</h1>
    <hr />
    
   &nbsp; &nbsp; &nbsp;
        <div style="float: right;margin:35px;">
            <a href="ElvisPresley.aspx">
                <img src="pics/presli0.jpg"  /><br/>
              <h1>----אלביס פרסלי----</h1>  
            </a>
        </div> 
     
    
    &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:35px;"; >
            <a href="MichaelJackson.aspx">
                <img src="pics/michaeljackson0.jpg" /><br/>
                <h1>----מייקל ג'קסון----</h1>
            </a>
        </div> 
        
           <br/><br/><br/><br/><br/><br/>
    &nbsp; &nbsp; &nbsp;
        <div style="float: right;">
            <a href="PaulMccartney.aspx">
                <img src="pics/Paul%20Mccartney0.jpg" /><br/>
                <h1>------פול מקרטני----</h1>
            </a>
        </div>
      
    &nbsp; &nbsp; &nbsp;
        <div style="float:left";>
            <a href="JohnFitzgeraldKennedy.aspx"> 
                <img src="pics/john%20Fitzgerald%20Kennedy0.jpg" /><br/>
                <h1>-----ג'ון פ. קנדי----</h1>
            </a>

        </div>
        
   
        
            <div >
                <a href="CultureQuestions.aspx">
                <h1>CultureQuestions</h1>
                    </a>
             </div>
        
    


</asp:Content>
