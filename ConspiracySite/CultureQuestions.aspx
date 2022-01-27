<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="CultureQuestions.aspx.cs" Inherits="ConspiracySite.CultureQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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

      

        hr {
            width: 90%;
            color: whitesmoke;
        }
        div{text-align:center}

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

    


    <table border ="0">
        <tr >

            <td>
                <form id ="form1" runat="server">

                    <table >
                        <tr><th colspan ="2" style="text-align:center;"> שאלת הסקר:איזה נושא הכי אהבתם </th></tr>

                        <tr>
                            <td style="text-align:right; width:100px">    פוליטיקה    </td>
                            <td><input type ="radio" name="surv" id="surv1" value="1" checked /></td>

                        </tr>
                        <tr>
                            <td style="text-align:right; width:100px">    יהדות וישראל    </td>
                            <td><input type ="radio" name="surv" id="surv2" value="2"  /></td>

                        </tr>
                        <tr>
                            <td style="text-align:right; width:100px">   דברים אמיתיים    </td>
                            <td><input type ="radio" name="surv" id="surv3" value="3"  /></td>

                        </tr>
                         <tr>
                            <td style="text-align:right; width:100px">    תרבות וחברה    </td>
                            <td><input type ="radio" name="surv" id="surv4" value="4"  /></td>

                        </tr>
                        <tr>
                            <td colspan ="3"style="text-align:center;">
                                <input type="submit" name="send" value="הצג" />
                            </td>
                        </tr>
                    </table>

                </form>
            </td>
            <td style="   width:700px;text-align:center;"">

                <%=str %>
              <h1><%=survey %></h1>  
            </td>
        </tr>
    </table>

  

</asp:Content>
