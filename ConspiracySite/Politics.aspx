<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="Politics.aspx.cs" Inherits="ConspiracySite.Politics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

         <title>פוליטיקה </title>
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

    <h1> פוליטיקה</h1>
    <hr />

    <div style="float: right;margin:35px;">
        <a href="DonaldJTrump.aspx"> 
           <img src="pics/Donald%20J%20Trump0.png" /> <br/>
                <h1>---דונלד גיי טראמפ-----</h1>
         </a>
            </div>

     &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:35px;"; >
            <a href="PizzaGate.aspx">
                <img src="pics/Pizza%20Gate0.png" /><br/>
                <h1>----פיצה גייט----</h1>
            </a>
        </div> 



      &nbsp; &nbsp; &nbsp;
        <div style="text-align: center; margin:35px;"; >
            <a href="KimJongUn.aspx">
                <img src="pics/Kim%20jong%20un%200.jpg" /> <br/>
                <h1>----קים גונג און----</h1>
            </a>
        </div> 
</asp:Content>
