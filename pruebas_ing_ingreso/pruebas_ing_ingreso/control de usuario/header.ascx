﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="control_de_usuario_header" %>
<style type="text/css">
    .auto-style1 { width: 20%; height: 69px;  }
    .auto-style2 { width: 82%; height: 69px;  }
    #Imagenbanner {height: 82px; margin-left: 0px;width: 1077px;  }
</style>
<link href="../estilos/estilos%20master%20page/banner.css" rel="stylesheet" type="text/css" />
<div style="width:100%; height:133px">  <%--infreso de recuadro en la parte de arriba--%>
<table id="tbaner" style="width:100% ;height:75px;"class="cabezalogo"  >
    
    <tr>
         <td class="baner"style="width:10%;height:80px;" >
             <asp:Image ID="imagenbanner1" BorderStyle="None" runat="server" ImageUrl="~/imagenes/banner1.1.png" Height="82px" Width="183px" />
         </td>
        <td class="auto-style2"  style="margin-right:0px;background-color:#C10207;" >

            <%--<img  id="imagenbanner"src="" style="margin-right:0px; height: 123px;" />--%>
            <img id="Imagenbanner" src="../imagenes/banner.png"  />
        </td>
    </tr>

    <tr>
        <td>

        </td>
    </tr>

    <tr>
        <td>

        </td>
    </tr>

</table>



</div>