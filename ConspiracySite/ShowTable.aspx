<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="ConspiracySite.ShowTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        h1,h2{text-align:center}
        h3{text-align:center;color:antiquewhite;font-size:larger;}
        table
        {
            margin: 0px auto;
            border: 1px solid white;
        }
       th{
            border: 1px solid white;
       }
        tr{border: 1px solid white;}
        td 
        {
           border: 1px solid white;
             padding: 10px;
            
        }
        .tab{border: 1px solid white;}
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>טבלת המשתמשים</h1>

    <h2> <%= sqlSelect %></h2> 

    <h2> <%=msg %></h2>

    <table border="1">
      <%=st  %>
    </table>
    
</asp:Content>
