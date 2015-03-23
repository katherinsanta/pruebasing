<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="direccionOrig" HeaderText="Direccion de origen" SortExpression="direccionOrig" />
                        <asp:BoundField DataField="direccionDest" HeaderText="Direccion de Destino" SortExpression="direccionDest" />
                        <asp:BoundField DataField="nombrePasajero" HeaderText="Nombre Del Pasajero" SortExpression="nombrePasajero" />
                        <asp:BoundField DataField="fechaservicio" HeaderText="Fecha del servicio" SortExpression="fechaServicio" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="horaServicio" HeaderText="Hora Del servicio" SortExpression="horaServicio" DataFormatString="{0:t}" />
                        <%--<asp:BoundField DataField="nombreEstado" HeaderText="Estado del servicio" SortExpression="nombreEstado" />--%>
                        <asp:BoundField DataField="valeAsignado" HeaderText="Vale asignado" ReadOnly="True" SortExpression="valeAsignado" />
                        <asp:BoundField DataField="movil" HeaderText="Numero de Movil" ReadOnly="True" SortExpression="movil" />
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        <asp:BoundField DataField="placa" HeaderText="Placa" ReadOnly="True" SortExpression="placa" />
                        <asp:BoundField DataField="nombreconductor" HeaderText="Nombre del conductor" SortExpression="nombreconductor" />
                        
                    </Columns>
                </asp:GridView>
            </ContentTemplate>


        </asp:UpdatePanel>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
