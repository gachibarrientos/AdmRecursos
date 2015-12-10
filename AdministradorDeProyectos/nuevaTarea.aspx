<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nuevaTarea.aspx.cs" Inherits="AdministradorDeProyectos.nuevaTarea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lbl1" runat="server" Text="Proyecto N°: "></asp:Label>
    <asp:Label ID="lblProyecto" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Descripcion de la Tarea:"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescripcionTarea" runat="server" Width="730px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Estacion:"></asp:Label>
    <br />
    <asp:GridView ID="tablaEstacion" runat="server" AutoGenerateColumns="False" DataKeyNames="nroEstacion" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="agregarE" Width="428px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="descripcionEstacion" HeaderText="descripcionEstacion" SortExpression="descripcionEstacion" />
        </Columns>
        <SelectedRowStyle BorderStyle="Groove" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [descripcionEstacion], [nroEstacion] FROM [Estacion] WHERE ([estado] = @estado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Sala:"></asp:Label>
    <asp:GridView ID="tablaSala" runat="server" AutoGenerateColumns="False" DataKeyNames="idSala" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="agregarSala" Width="431px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="descripcionSala" HeaderText="descripcionSala" SortExpression="descripcionSala" />
        </Columns>
        <SelectedRowStyle BorderStyle="Groove" />
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
    <asp:Label ID="Label4" runat="server" Text="Personal disponible:"></asp:Label>
    <br />
    <asp:GridView ID="tablaPersonal" runat="server" AutoGenerateColumns="False" DataKeyNames="legajo" DataSourceID="SqlDataSource3" Height="128px" OnSelectedIndexChanged="agregarPersonal" Width="656px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
            <asp:BoundField DataField="especialidad" HeaderText="especialidad" SortExpression="especialidad" />
        </Columns>
        <SelectedRowStyle BorderStyle="Groove" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombre], [apellido], [cargo], [especialidad], [legajo] FROM [Persona] WHERE ([estado] = @estado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="estado" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="btnGuardarTarea" runat="server" OnClick="btnGuardarTarea_Click" Text="Guardar" />
</asp:Content>
