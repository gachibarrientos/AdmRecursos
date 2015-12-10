<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="AdministradorDeProyectos.manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="btn-lg" Font-Names="Segoe UI Light" Font-Overline="False" Font-Size="20pt" Font-Strikeout="False" Font-Underline="True" ForeColor="Blue" Text="Usuarios Registrados: "></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceuserData" CellPadding="4" CssClass="table" Font-Bold="False" Font-Italic="False" Font-Names="Segoe UI Light" Font-Size="10pt" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="556px">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID: " ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="email" HeaderText="E-Mail:" SortExpression="email" />
        <asp:BoundField DataField="usuario" HeaderText="Usuario: " SortExpression="usuario" />
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
<asp:SqlDataSource ID="SqlDataSourceuserData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userData]"></asp:SqlDataSource>
</asp:Content>
