<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="AdministradorDeProyectos.manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceuserData">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
        <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceuserData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userData]"></asp:SqlDataSource>
</asp:Content>
