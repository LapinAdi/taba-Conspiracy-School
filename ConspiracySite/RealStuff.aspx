<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="RealStuff.aspx.cs" Inherits="ConspiracySite.RealStuff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <title> קונספירציות שהתבברו כאמת</title>
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

     
    <div style="float:left;">
        
        <img src="pics/real%20stuff.png" />

    </div>
    <h1>  קונספירציות שהתבררו כאמת</h1>
    <hr />
        
   

           &nbsp; &nbsp; &nbsp;
        <div style="float:right; margin:200px;"; >
            <a href="MKUltra.aspx">
                <img src="pics/MKUltra0.png" />
                <h1>----פרוייקט אולטרה----</h1>
            </a>
        </div> 
     

      &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:200px;"; >
            <a href="EdwardSnowden.aspx"> 
                <img src="pics/EdwardSnowden0.png" /><br/>
                <h1>----אדואד סנודן----</h1>
            </a>
        </div> 
             
   

</asp:Content>
