<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="ConspiracySite.DeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        h1,h2{text-align:center}
        
        table
        {
            margin: 0px auto;
            border: 1px solid white;
        }
        th
        {
            border: 1px solid white;
             padding: 10px;
        }    
        td 
        {
            border: 1px solid white;
             padding: 10px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <h2> <%= sqlSelect %></h2> 

    <h2> <%=msg %></h2>

    <table>
      <%=st  %>
    </table>

</asp:Content>
