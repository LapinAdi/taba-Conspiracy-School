<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="LogInAdmin.aspx.cs" Inherits="ConspiracySite.LogInAdmin" %>
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

      <form method="post" runat="server">

        <h3>כניסת מנהל</h3>
        <hr />

        <table id="table1">
            <tr>
                <td class="tab"><h2>שם המנהל</h2></td>
                <td class="tab"><input type ="text" name="mName" id="mName" /></td>
            </tr>
            <tr>
                <td class="tab"><h2>סיסמא</h2></td>
                <td class="tab"><input type ="password" name="mpw" id="pw" /></td>
            </tr>
            <tr>
                <!---לתת תגית NAME ל SUBMIT--->
                <td class="tab" colspan="2" style="text-align:center;">
                    <input type="submit" name="submit" value="התחבר" />
                </td>
            </tr>
        </table>
    </form>
       <h3 style="direction:ltr;"><%=sqlAdmin %></h3>  

</asp:Content>

