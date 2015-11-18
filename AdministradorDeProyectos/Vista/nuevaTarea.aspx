<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nuevaTarea.aspx.cs" Inherits="nuevaTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nueva Tarea</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet">
    <style type="text/css">
        #form1 {
            height: 800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
        <asp:Label ID="lblnuevaTarea" runat="server" Text="Nueva Tarea" CssClass="text-primary" Font-Size="Large"></asp:Label>
    </div>
        <p>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblNombreTarea" runat="server" Text="Nombre: " CssClass="text-justify"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    
        <asp:TextBox ID="txtNombre" runat="server" Width="329px" CssClass="input-sm"></asp:TextBox>
    
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblDescripcion" runat="server" Text="Descripción: " CssClass="text-justify"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="txtDescripcion" runat="server" Width="326px" CssClass="input-sm"></asp:TextBox>
    
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Seleccionar Personal" CssClass="text-info"></asp:Label>
    
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:GridView ID="tablaPersonal" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="124px" Width="471px" AllowPaging="True" DataKeyNames="legajo" OnSelectedIndexChanged="agregarLegajos" CssClass="table">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="legajo" HeaderText="legajo" SortExpression="legajo" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="especialidad" HeaderText="especialidad" SortExpression="especialidad" />
                </Columns>
                <SelectedRowStyle BackColor="Aqua" BorderStyle="Solid" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [legajo], [nombre], [apellido], [especialidad] FROM [Persona]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Seleccionar Estaciones de Trabajo" CssClass="text-info"></asp:Label>
    
        </p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nroEstacion], [descripcionEstacion] FROM [Estacion] WHERE [disponible]=0"></asp:SqlDataSource>
            <asp:GridView ID="tablaEstaciones" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="16px" Width="473px" AllowPaging="True" DataKeyNames="nroEstacion" CssClass="table">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="nroEstacion" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="nroEstacion" />
                    <asp:BoundField DataField="descripcionEstacion" HeaderText="Descripcion de PC" SortExpression="descripcionEstacion" />
                </Columns>
                <SelectedRowStyle BackColor="Aqua" BorderStyle="Solid" />
            </asp:GridView>
        
             <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Seleccionar Sala" CssClass="text-info"></asp:Label>
    </p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT idSala, descripcionSala FROM Sala WHERE [disponible]=0"></asp:SqlDataSource>
        <asp:GridView ID="tablaSalas" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="idSala" DataSourceID="SqlDataSource3" HorizontalAlign="Left" Width="470px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="descripcionSala" HeaderText="Descripción" SortExpression="descripcionSala" />
            </Columns>
            <EditRowStyle Wrap="True" />
            <SelectedRowStyle BackColor="Aqua" BorderStyle="Solid" />
        </asp:GridView>
       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
       
    </form>
</body>
</html>
