<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nuevoProyecto.aspx.cs" Inherits="AdministradorDeProyectos.nuevoProyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblAdmin" runat="server" Text="Usuario Privilegiado: "></asp:Label>
    <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesión" />
    <br />
    <br />
    <br />
    <asp:Label ID="txtNuevoProyecto" runat="server" CssClass="text-primary" Font-Size="30pt" Text="Nuevo Proyecto"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lblNombreProyecto" runat="server" Text="Nombre: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNombreProyecto" runat="server" Width="380px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:TextBox ID="txtDescripcion" runat="server" Height="76px" MaxLength="100" TextMode="MultiLine" Width="691px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Fecha de Inicio:"></asp:Label>
    <br />
&nbsp;&nbsp;
    <asp:Calendar ID="fechaInicio" runat="server"></asp:Calendar>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Fecha de Fin:"></asp:Label>
&nbsp;<br />
&nbsp;&nbsp;
    <asp:Calendar ID="fechaFin" runat="server"></asp:Calendar>
    <br />
    <asp:Button ID="btnAceptarProyecto" runat="server" Text="Aceptar" />
</asp:Content>
