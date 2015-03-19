<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="control_de_usuario_footer" %>
<style type="text/css">.auto-style1 {  width: 100%;    }</style>


<link href="../estilos/controles%20de%20usuario/cntuser.css" rel="stylesheet" type="text/css" />

<div style="clear: both; height: 55px; border: solid 1px black; background-color: #666666; margin-bottom: 0px;">
<table class="auto-style1" style="width:100%;height:55px">
    <tr style="height:5px">
        <td style="font-size:9px;text-align:center;color:#ffffff">   
            <asp:Label ID="lblversión" runat="server" Text="Copyright 2015 terrabike.co todos los derechos reservados versión "></asp:Label>     
            <asp:Label ID="lblnumversión" runat="server" Text="1.0.0.0_"></asp:Label>
            <asp:Label ID="lblaviso" runat="server" Text="Pagina web y administracion "></asp:Label>
            </td>
    </tr>
    <tr style="height:2px">
        <td style="height:2px;text-align:center; font-size:9px; color:#ffffff">
            <%--<asp:HyperLink ID="Hyp" runat="server">HyperLink</asp:HyperLink>--%>
            <asp:Label ID="lbldir" runat="server" Text="direccion de terrabike en venecia"></asp:Label>
        </td>
    </tr>
</table>

</div>