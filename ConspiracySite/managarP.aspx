<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="managarP.aspx.cs" Inherits="ConspiracySite.managarP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        h2,h3{text-align:center}
        h2 {
            color: #5c0302;
             font-size:   30pt;
            font-size:   xx-large;
            font-weight: bold
        }

        h3 {
            
            
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
        table
        {
            margin: 0px auto;
            border: 1px solid white;
        }
       
        tr{}
        td 
        {
           
             padding: 10px;
            
        }
        .tab{border: 1px solid white;}
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 >דף ניהול</h1>
   

   <%= msg %>


   
    

</asp:Content>
