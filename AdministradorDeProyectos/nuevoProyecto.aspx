<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="nuevoProyecto.aspx.cs" Inherits="AdministradorDeProyectos.nuevoProyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lbl0" runat="server" Text="Usuario Privilegiado: " CssClass="btn-lg" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <asp:Label ID="lblAdmin" runat="server" CssClass="text-primary" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesión" CssClass="btn-primary" Font-Names="Segoe UI Light" />
    <br />
    <br />
    <br />
    <asp:Label ID="txtNuevoProyecto" runat="server" CssClass="btn-lg" Font-Size="25pt" Text="Nuevo Proyecto" Font-Bold="True" Font-Names="Segoe UI Light" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lblNombreProyecto" runat="server" Text="Nombre: " Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNombreProyecto" runat="server" Width="380px" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Descripcion:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:TextBox ID="txtDescripcion" runat="server" Height="76px" MaxLength="100" TextMode="MultiLine" Width="691px" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Fecha de Inicio:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
    <br />
&nbsp;&nbsp;<asp:Calendar ID="calInicio" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    &nbsp;<br />
    <asp:Label ID="Label4" runat="server" Text="Fecha de Fin:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
&nbsp;<br />
&nbsp;&nbsp;
    <asp:Calendar ID="calFin" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <br />
    <asp:Button ID="btnAceptarProyecto" runat="server" Text="Aceptar" OnClick="btnAceptarProyecto_Click" CssClass="btn-primary" Font-Names="Segoe UI Light" Font-Size="12pt" />
</asp:Content>
