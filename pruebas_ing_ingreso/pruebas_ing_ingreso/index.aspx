<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="pruebas_ing_ingreso._in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="txtdoc" runat="server" Text="Cedula"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Apellido Materno"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Apellido Paterno"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Telefono celular"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Telefono casa"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Correo electronico"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Direccion casa"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Sexo"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" text="HOMBRE" value="H" runat="server" />
                    <asp:RadioButton ID="RadioButton2" TEXT="MUJER" value="M"  runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblprueba" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Fecha de nacimiento"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
              


            </tr>
        </table>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:BoundField DataField="valeasignado" HeaderText="Numero vale " SortExpression="valeasignado" />
                       <asp:BoundField DataField="idsolicitud" HeaderText="Numero solicitud" SortExpression="idsolicitud" />
                       <asp:BoundField DataField="idconductor" HeaderText="Conductor" SortExpression="idconductor" />
                       <asp:BoundField DataField="direccionorig" HeaderText="Direccion Origen" SortExpression="direccionorig" />
                       <asp:BoundField DataField="direccionDest" HeaderText="Direccion Destino" SortExpression="direccionDest" />
                       <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                       <asp:BoundField DataField="horaServicio" HeaderText="Hora servicio" SortExpression="horaServicio" />
                       <asp:BoundField DataField="movil" HeaderText="Movil" SortExpression="movil" />
                       <asp:BoundField DataField="nombrePasajero" HeaderText="Nombre del Pasajero" SortExpression="nombrePasajero" />
                   </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
