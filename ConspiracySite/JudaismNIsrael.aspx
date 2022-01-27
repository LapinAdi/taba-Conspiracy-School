<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="JudaismNIsrael.aspx.cs" Inherits="ConspiracySite.JudaismAndIsrael" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <title> יהדות וישראל </title>
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



      <h1> קונספירציות בנושא יהדות וישראל</h1>
    <hr />

 

     &nbsp; &nbsp; &nbsp;
        <div style="float: right;margin:35px;">
            <a href="RabinAssassination.aspx">
                <img src="pics/Rabin%20assassination0.jpg" /><br/>
                <h1>----יצחק רבין----</h1>
            </a>
            </div>

    <div style="float:left;margin:35px;">
        <a href="AntisemiticConspiracies.aspx">
            <img src="pics/anticemi.png" />  <br/>
                <h1>-קונספירציות אנטישמיות מגוחכות---</h1>

        </a>
        </div>

</asp:Content>
