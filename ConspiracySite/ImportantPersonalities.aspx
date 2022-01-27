<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="ImportantPersonalities.aspx.cs" Inherits="ConspiracySite.ImportantPersonalities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <title> אישיות חשובות</title>
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

     <h1> אישיות חשובות</h1>
    <hr />
       &nbsp; &nbsp; &nbsp;
        <div style="float:right; margin:200px;"; >
            <a href="ElonMusk.aspx">
                <img src="pics/Elon%20Musk0.jpg" />
                <h1>----אילון מאסק----</h1>
            </a>
        </div> 

      &nbsp; &nbsp; &nbsp;
        <div style="float:left; margin:200px;"; >
            <a href="BillGates.aspx">
                <img src="pics/bill%20Gates0.jpg" /> <br/>
                <h1>----ביל גייטס----</h1>
            </a>
        </div> 
                  <br/><br/><br/><br/><br/><br/>
 
   <br/><br/><br/><br/><br/><br/>
     &nbsp; &nbsp; &nbsp;
       
    <div style="text-align: center;">
        
        <a href="ScienceNtechnology.aspx">
            <img src="pics/back1.png"style="height: 130px;" />
        </a>

    </div>

</asp:Content>
