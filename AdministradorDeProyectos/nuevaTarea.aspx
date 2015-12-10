<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="nuevaTarea.aspx.cs" Inherits="AdministradorDeProyectos.nuevaTarea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lbl1" runat="server" Text="Proyecto N°: " CssClass="btn-lg" Font-Names="Segoe UI Light" Font-Size="12pt" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <asp:Label ID="lblProyecto" runat="server" CssClass="text-primary"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Descripcion de la Tarea:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtDescripcionTarea" runat="server" Width="730px" Font-Names="Segoe UI Light" Font-Size="15pt" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Estacion de Trabajo:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="tablaEstacion" runat="server" AutoGenerateColumns="False" DataKeyNames="nroEstacion" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="agregarE" Width="428px" CellPadding="4" Font-Names="Segoe UI Light" Font-Size="12pt" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <ControlStyle ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="descripcionEstacion" HeaderText="NRO:" SortExpression="descripcionEstacion" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BorderStyle="Groove" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [descripcionEstacion], [nroEstacion] FROM [Estacion] WHERE ([estado] = @estado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Sala:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
    <br />
    <asp:GridView ID="tablaSala" runat="server" AutoGenerateColumns="False" DataKeyNames="idSala" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="agregarSala" Width="431px" CellPadding="4" Font-Names="Segoe UI Light" Font-Size="12pt" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <ControlStyle ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="descripcionSala" HeaderText="NRO:" SortExpression="descripcionSala" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BorderStyle="Groove" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [descripcionSala], [idSala] FROM [Sala] WHERE ([estado] = @estado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Personal disponible:" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Blue"></asp:Label>
    <br />
    <asp:GridView ID="tablaPersonal" runat="server" AutoGenerateColumns="False" DataKeyNames="legajo" DataSourceID="SqlDataSource3" Height="128px" OnSelectedIndexChanged="agregarPersonal" Width="656px" CellPadding="4" Font-Names="Segoe UI Light" Font-Size="12pt" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <ControlStyle ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="nombre" HeaderText="Nombre: " SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="Apellido:" SortExpression="apellido" />
            <asp:BoundField DataField="cargo" HeaderText="Cargo:" SortExpression="cargo" />
            <asp:BoundField DataField="especialidad" HeaderText="Especialidad:" SortExpression="especialidad" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BorderStyle="Groove" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombre], [apellido], [cargo], [especialidad], [legajo] FROM [Persona] WHERE ([estado] = @estado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="btnGuardarTarea" runat="server" OnClick="btnGuardarTarea_Click" Text="Guardar" CssClass="btn-primary" Font-Names="Segoe UI Light" />
</asp:Content>
