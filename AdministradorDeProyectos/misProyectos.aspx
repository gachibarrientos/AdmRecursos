<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="misProyectos.aspx.cs" Inherits="AdministradorDeProyectos.misProyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblBienvenido0" runat="server" Text="Bienvenido!" CssClass="btn-lg" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
    <asp:Label ID="lblBienvenido" runat="server" CssClass="text-primary"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesion" CssClass="btn-primary" Font-Names="Segoe UI Light" Font-Size="12pt" UseSubmitBehavior="False" />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="tablaProyectos" runat="server" AutoGenerateColumns="False" DataKeyNames="idProyecto" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="onSeleccionProyecto" CellPadding="4" Font-Names="Segoe UI Light" Font-Size="12pt" ForeColor="#333333" GridLines="None" Width="742px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <ControlStyle ForeColor="Blue" />
            </asp:CommandField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Proyecto]"></asp:SqlDataSource>
</asp:Content>
