<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="AdministradorDeProyectos.registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Crear Nueva Cuenta" Font-Size="25pt" Font-Bold="True" Font-Names="Segoe UI Light" Font-Underline="True" ForeColor="Blue"></asp:Label> <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Usuario:" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label> <br />
    <asp:TextBox ID="txtUsuario" runat="server" Width="471px" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Usuario es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
        <asp:Label ID="Label3" runat="server" Text="E-Mail:" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label> <br />
    <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="471px" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMail" ErrorMessage="E-Mail es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Debes ingresar un E-Mail valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br />
        <asp:Label ID="Label4" runat="server" Text="Contraseña:" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label> <br />
    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" Width="471px" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Contraseña es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
        <asp:Label ID="Label5" runat="server" Text="Confirmar Contraseña:" Font-Names="Segoe UI Light" Font-Size="15pt" Font-Underline="True" ForeColor="Blue"></asp:Label> <br />
    <asp:TextBox ID="txtConfirmContraseña" runat="server" TextMode="Password" Width="471px" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmContraseña" ErrorMessage="Confirmar Contraseña es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtConfirmContraseña" ErrorMessage="Las contraseñas deben coincidir" ForeColor="Red"></asp:CompareValidator>
<br />
<asp:Button ID="btnRegistrarse" runat="server" CssClass="btn-primary" OnClick="btnRegistrarse_Click" Text="Registrarse" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input id="Reset1" type="reset" value="Borrar" class="btn-primary" />
</asp:Content>
