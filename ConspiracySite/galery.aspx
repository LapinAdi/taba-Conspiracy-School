<%@ Page Title="" Language="C#" MasterPageFile="~/ConspiracyM.Master" AutoEventWireup="true" CodeBehind="galery.aspx.cs" Inherits="ConspiracySite.galery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
       

   

        h2 {
            color: #5c0302;
            text-align: right;
            font-size:   30pt;
            font-weight: bold
        }

        h3 {
            color: antiquewhite;
             text-align: center;
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

        body link {
        }

        input { text-align: center; }
        table{
            
            margin: 0px auto;
           
        }
      
       

        .imgCell{width:260px;height:160px;border: 1px solid #062121;padding:1px}
        .bigPic{width:520px;height:340px;border: 1px solid #062121;padding:2px}

    </style>
    <script >

        function picShow(pic)
        {
            bigPic.src = pic;
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
             <td> <img class="imgCell" src="pics/galery/0%20.png" onmouseover="picShow('pics/galery/0%20.png')" /></td>
             <td> <img class="imgCell" src="pics/galery/1%20.png" onmouseover="picShow('pics/galery/1%20.png')" /></td>
             <td> <img class="imgCell" src="pics/galery/2.png"    onmouseover="picShow('pics/galery/2.png')"    /></td>
             <td> <img class="imgCell" src="pics/galery/3.png"    onmouseover="picShow('pics/galery/3.png')"    /></td>
        </tr>
        <tr>
             <td> <img class="imgCell" src="pics/galery/4.png"    onmouseover="picShow('pics/galery/4.png')" /></td>
             <td rowspan="2" colspan="2">
                 <img class="bigPic" id="bigPic" src="pics/galery/0%20.png" />
             </td>
             <td> <img class="imgCell" src="pics/galery/5.png" onmouseover="picShow('pics/galery/5.png')"  /></td>
            
        </tr>
        <tr>
           
             <td> <img  class="imgCell" src="pics/galery/6.png" onmouseover="picShow('pics/galery/6.png')" /></td>
             <td> <img  class="imgCell" src="pics/galery/7.png" onmouseover="picShow('pics/galery/7.png')" /></td>
        </tr>
        <tr>
             <td> <img class="imgCell" src="pics/galery/8.png"  onmouseover="picShow('pics/galery/8.png')"/></td>
             <td> <img class="imgCell" src="pics/galery/9.png"  onmouseover="picShow('pics/galery/9.png')"/></td>
             <td> <img class="imgCell" src="pics/galery/10.png" onmouseover="picShow('pics/galery/10.png')"/></td>
             <td> <img class="imgCell"src="pics/galery/11.png"  onmouseover="picShow('pics/galery/11.png')"/></td>
        </tr>

    </table>



</asp:Content>
