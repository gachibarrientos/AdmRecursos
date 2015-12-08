<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="proyectoSeleccionado.aspx.cs" Inherits="AdministradorDeProyectos.proyectoSeleccionado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblProyecto" runat="server" Text="Proyecto: "></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idTarea" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:BoundField DataField="idTarea" HeaderText="idTarea" ReadOnly="True" SortExpression="idTarea" />
            <asp:BoundField DataField="descripcionTarea" HeaderText="descripcionTarea" SortExpression="descripcionTarea" />
            <asp:BoundField DataField="nroEstacion" HeaderText="nroEstacion" SortExpression="nroEstacion" />
            <asp:BoundField DataField="idSala" HeaderText="idSala" SortExpression="idSala" />
            <asp:BoundField DataField="legajo" HeaderText="legajo" SortExpression="legajo" />
            <asp:BoundField DataField="idProyecto" HeaderText="idProyecto" SortExpression="idProyecto" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tarea] WHERE [idTarea] = @idTarea" InsertCommand="INSERT INTO [Tarea] ([descripcionTarea], [nroEstacion], [idSala], [legajo], [idProyecto]) VALUES (@descripcionTarea, @nroEstacion, @idSala, @legajo, @idProyecto)" SelectCommand="SELECT [idTarea], [descripcionTarea], [nroEstacion], [idSala], [legajo], [idProyecto] FROM [Tarea] WHERE ([idProyecto] = @idProyecto)" UpdateCommand="UPDATE [Tarea] SET [descripcionTarea] = @descripcionTarea, [nroEstacion] = @nroEstacion, [idSala] = @idSala, [legajo] = @legajo, [idProyecto] = @idProyecto WHERE [idTarea] = @idTarea">
        <DeleteParameters>
            <asp:Parameter Name="idTarea" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcionTarea" Type="String" />
            <asp:Parameter Name="nroEstacion" Type="Int32" />
            <asp:Parameter Name="idSala" Type="Int32" />
            <asp:Parameter Name="legajo" Type="Int32" />
            <asp:Parameter Name="idProyecto" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="idProyecto" SessionField="idProyecto" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcionTarea" Type="String" />
            <asp:Parameter Name="nroEstacion" Type="Int32" />
            <asp:Parameter Name="idSala" Type="Int32" />
            <asp:Parameter Name="legajo" Type="Int32" />
            <asp:Parameter Name="idProyecto" Type="Int32" />
            <asp:Parameter Name="idTarea" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnNuevaTarea" runat="server" Text="Nueva Tarea" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Descripción de Salas:"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idSala" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:BoundField DataField="idSala" HeaderText="idSala" ReadOnly="True" SortExpression="idSala" />
            <asp:BoundField DataField="descripcionSala" HeaderText="descripcionSala" SortExpression="descripcionSala" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Sala] WHERE [idSala] = @idSala" InsertCommand="INSERT INTO [Sala] ([descripcionSala]) VALUES (@descripcionSala)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [idSala], [descripcionSala] FROM [Sala]" UpdateCommand="UPDATE [Sala] SET [descripcionSala] = @descripcionSala WHERE [idSala] = @idSala">
        <DeleteParameters>
            <asp:Parameter Name="idSala" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcionSala" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcionSala" Type="String" />
            <asp:Parameter Name="idSala" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Descripcion de Estaciones de Trabajo:"></asp:Label>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="nroEstacion" DataSourceID="SqlDataSource3" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:BoundField DataField="nroEstacion" HeaderText="nroEstacion" ReadOnly="True" SortExpression="nroEstacion" />
            <asp:BoundField DataField="descripcionEstacion" HeaderText="descripcionEstacion" SortExpression="descripcionEstacion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Estacion] WHERE [nroEstacion] = @nroEstacion" InsertCommand="INSERT INTO [Estacion] ([descripcionEstacion]) VALUES (@descripcionEstacion)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [nroEstacion], [descripcionEstacion] FROM [Estacion]" UpdateCommand="UPDATE [Estacion] SET [descripcionEstacion] = @descripcionEstacion WHERE [nroEstacion] = @nroEstacion">
        <DeleteParameters>
            <asp:Parameter Name="nroEstacion" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcionEstacion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="descripcionEstacion" Type="String" />
            <asp:Parameter Name="nroEstacion" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
