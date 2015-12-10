<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="misProyectos.aspx.cs" Inherits="AdministradorDeProyectos.misProyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblBienvenido0" runat="server" Text="Bienvenido!"></asp:Label>
    <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
    <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="CerrarSesion" />
    <br />
    <asp:GridView ID="tablaProyectos" runat="server" AutoGenerateColumns="False" DataKeyNames="idProyecto" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="onSeleccionProyecto">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="nombreProyecto" HeaderText="nombreProyecto" SortExpression="nombreProyecto" />
            <asp:BoundField DataField="fechaInicio" HeaderText="fechaInicio" SortExpression="fechaInicio" />
            <asp:BoundField DataField="fechaFin" HeaderText="fechaFin" SortExpression="fechaFin" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Proyecto]"></asp:SqlDataSource>
</asp:Content>
