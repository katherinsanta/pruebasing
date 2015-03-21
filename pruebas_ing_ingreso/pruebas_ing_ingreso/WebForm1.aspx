<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pruebas_ing_ingreso.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="direccionOrig" HeaderText="direccionOrig" SortExpression="direccionOrig" />
                        <asp:BoundField DataField="direccionDest" HeaderText="direccionDest" SortExpression="direccionDest" />
                        <asp:BoundField DataField="nombrePasajero" HeaderText="nombrePasajero" SortExpression="nombrePasajero" />
                        <asp:BoundField DataField="fechaServicio" HeaderText="fechaServicio" SortExpression="fechaServicio" />
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        <asp:BoundField DataField="valeAsignado" HeaderText="valeAsignado" SortExpression="valeAsignado" />
                        <asp:BoundField DataField="nombreConductor" HeaderText="nombreConductor" SortExpression="nombreConductor" />
                        <asp:BoundField DataField="horaServicio" HeaderText="horaServicio" SortExpression="horaServicio" />
                        <asp:BoundField DataField="movil" HeaderText="movil" SortExpression="movil" />
                        <asp:BoundField DataField="placa" HeaderText="placa" SortExpression="placa" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:siatConnectionString %>" SelectCommand="SELECT TOP (100) direccionOrig, direccionDest, nombrePasajero,fechaServicio, estado, valeAsignado, nombreConductor, horaServicio, movil, placa 
FROM PDV_SolicitudesTransporte 
WHERE (CAST(fechaServicio AS date) = '20150321') AND (estado IN (2, 9)) order by (fechaServicio )"></asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
