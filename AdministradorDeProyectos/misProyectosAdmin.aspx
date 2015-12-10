<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="misProyectosAdmin.aspx.cs" Inherits="AdministradorDeProyectos.misProyectosAdmin" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">

    <asp:Label ID="lblBienvenido0" runat="server" Text="Bienvenido!" CssClass="btn-lg" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="False" ForeColor="Blue"></asp:Label>

    <asp:Label ID="lblBienvenido" runat="server" CssClass="text-primary" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="CerrarSesion" CssClass="btn-primary" Font-Names="Segoe UI Light" />

    <br />
    <br />
    <asp:GridView ID="tablaProyectos" runat="server" AutoGenerateColumns="False" DataKeyNames="idProyecto" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="onSeleccionProyecto" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Names="Segoe UI Light" Font-Size="12pt">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" >
            <ControlStyle ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="idProyecto" HeaderText="Nro Proyecto:" ReadOnly="True" SortExpression="idProyecto" />
            <asp:BoundField DataField="nombreProyecto" HeaderText="Nombre:" SortExpression="nombreProyecto" />
            <asp:BoundField DataField="fechaInicio" HeaderText="Fecha de Inicio:" SortExpression="fechaInicio" />
            <asp:BoundField DataField="fechaFin" HeaderText="Fecha de Fin:" SortExpression="fechaFin" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripcion:" SortExpression="descripcion" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
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
    <asp:Button ID="btnNuevoProyecto" runat="server" OnClick="btnNuevoProyecto_Click" Text="Nuevo Proyecto" CssClass="btn-primary" Font-Names="Segoe UI Light" />

</asp:Content>


