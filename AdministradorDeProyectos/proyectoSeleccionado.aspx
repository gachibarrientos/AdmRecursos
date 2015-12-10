<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="proyectoSeleccionado.aspx.cs" Inherits="AdministradorDeProyectos.proyectoSeleccionado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblProyecto0" runat="server" Text="Proyecto: " Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <asp:Label ID="lblProyecto" runat="server" CssClass="text-primary" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblProgreso0" runat="server" Text="Progreso: " Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <asp:Label ID="lblProgreso" runat="server" CssClass="text-primary" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblTareas" runat="server" CssClass="btn-lg" Font-Size="25pt" Text="Tareas a realizar:" Font-Bold="True" Font-Names="Segoe UI Light" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="tablaTareas" runat="server" AutoGenerateColumns="False" DataKeyNames="idTarea" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" ForeColor="#333333" GridLines="None" Font-Names="Segoe UI Light" Font-Size="12pt">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" >
            <ControlStyle ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="idTarea" HeaderText="Nro:" SortExpression="idTarea" InsertVisible="False" />
            <asp:BoundField DataField="descripcionTarea" HeaderText="Detalle:" SortExpression="descripcionTarea" InsertVisible="False" />
            <asp:BoundField DataField="nroEstacion" HeaderText="Estación utilizada:" SortExpression="nroEstacion" InsertVisible="False" />
            <asp:BoundField DataField="idSala" HeaderText="Nro de Sala:" SortExpression="idSala" InsertVisible="False" />
            <asp:BoundField DataField="legajo" HeaderText="Legajo del responsable:" SortExpression="legajo" InsertVisible="False" />
            <asp:BoundField DataField="idProyecto" HeaderText="Nro Proyecto:" SortExpression="idProyecto" InsertVisible="False" />
            <asp:CheckBoxField DataField="estado" HeaderText="Finalizada: " SortExpression="estado" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tarea] WHERE [idTarea] = @idTarea" InsertCommand="INSERT INTO [Tarea] ([descripcionTarea], [nroEstacion], [idSala], [legajo], [idProyecto], [estado]) VALUES (@descripcionTarea, @nroEstacion, @idSala, @legajo, @idProyecto, @estado)" SelectCommand="SELECT [idTarea], [descripcionTarea], [nroEstacion], [idSala], [legajo], [idProyecto], [estado] FROM [Tarea] WHERE ([idProyecto] = @idProyecto)" UpdateCommand="UPDATE [Tarea] SET [descripcionTarea] = @descripcionTarea, [nroEstacion] = @nroEstacion, [idSala] = @idSala, [legajo] = @legajo, [idProyecto] = @idProyecto, [estado] = @estado WHERE [idTarea] = @idTarea">
        <DeleteParameters>
            <asp:Parameter Name="idTarea" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="descripcionTarea" Type="String" />
            <asp:Parameter Name="nroEstacion" Type="Int32" />
            <asp:Parameter Name="idSala" Type="Int32" />
            <asp:Parameter Name="legajo" Type="Int32" />
            <asp:Parameter Name="idProyecto" Type="Int32" />
            <asp:Parameter Name="estado" Type="Boolean" />
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
            <asp:Parameter Name="estado" Type="Boolean" />
            <asp:Parameter Name="idTarea" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnNuevaTarea" runat="server" Text="Nueva Tarea" OnClick="btnNuevaTarea_Click" CssClass="btn-primary" Font-Names="Segoe UI Light" Font-Size="15pt" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Descripción de Salas:" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idSala" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" ForeColor="#333333" GridLines="None" Font-Names="Segoe UI Light" Font-Size="12pt">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="idSala" HeaderText="Nro:" ReadOnly="True" SortExpression="idSala" />
            <asp:BoundField DataField="descripcionSala" HeaderText="Detalle:" SortExpression="descripcionSala" />
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
    <asp:Label ID="Label2" runat="server" Text="Descripcion de Estaciones de Trabajo:" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="nroEstacion" DataSourceID="SqlDataSource3" EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" ForeColor="#333333" GridLines="None" Font-Names="Segoe UI Light" Font-Size="12pt">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nroEstacion" HeaderText="Nro:" ReadOnly="True" SortExpression="nroEstacion" />
            <asp:BoundField DataField="descripcionEstacion" HeaderText="Detalle:" SortExpression="descripcionEstacion" />
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
