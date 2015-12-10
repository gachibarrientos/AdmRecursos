<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="misProyectosAdmin.aspx.cs" Inherits="AdministradorDeProyectos.misProyectosAdmin" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">

    <asp:Label ID="lblBienvenido0" runat="server" Text="Bienvenido!"></asp:Label>

    <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="CerrarSesion" />

    <br />
    <br />
    <asp:GridView ID="tablaProyectos" runat="server" AutoGenerateColumns="False" DataKeyNames="idProyecto" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="onSeleccionProyecto">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="idProyecto" HeaderText="idProyecto" ReadOnly="True" SortExpression="idProyecto" />
            <asp:BoundField DataField="nombreProyecto" HeaderText="nombreProyecto" SortExpression="nombreProyecto" />
            <asp:BoundField DataField="fechaInicio" HeaderText="fechaInicio" SortExpression="fechaInicio" />
            <asp:BoundField DataField="fechaFin" HeaderText="fechaFin" SortExpression="fechaFin" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Proyecto] WHERE [idProyecto] = @idProyecto" InsertCommand="INSERT INTO [Proyecto] ([nombreProyecto], [fechaInicio], [fechaFin], [descripcion]) VALUES (@nombreProyecto, @fechaInicio, @fechaFin, @descripcion)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [idProyecto], [nombreProyecto], [fechaInicio], [fechaFin], [descripcion] FROM [Proyecto]" UpdateCommand="UPDATE [Proyecto] SET [nombreProyecto] = @nombreProyecto, [fechaInicio] = @fechaInicio, [fechaFin] = @fechaFin, [descripcion] = @descripcion WHERE [idProyecto] = @idProyecto">
        <DeleteParameters>
            <asp:Parameter Name="idProyecto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombreProyecto" Type="String" />
            <asp:Parameter DbType="Date" Name="fechaInicio" />
            <asp:Parameter DbType="Date" Name="fechaFin" />
            <asp:Parameter Name="descripcion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombreProyecto" Type="String" />
            <asp:Parameter DbType="Date" Name="fechaInicio" />
            <asp:Parameter DbType="Date" Name="fechaFin" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="idProyecto" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="btnNuevoProyecto" runat="server" OnClick="btnNuevoProyecto_Click" Text="Nuevo Proyecto" />

</asp:Content>


