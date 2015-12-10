<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AdministradorDeProyectos.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="btn-lg" Font-Names="Segoe UI Light" Font-Overline="False" Font-Size="20pt" Font-Strikeout="False" Font-Underline="True" ForeColor="Blue" Text="Iniciar Sesión"></asp:Label>
    <br />
    <br />
<asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label" ID="Label1" Font-Names="Segoe UI Light" Font-Size="15pt">Correo electrónico</asp:Label>
<asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" Font-Names="Segoe UI Light" Font-Size="15pt" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." ID="RequiredFieldValidator1" />
<br />
<br />
<asp:Label runat="server" AssociatedControlID="txtContraseña" CssClass="col-md-2 control-label" ID="Label2" Font-Names="Segoe UI Light" Font-Size="15pt">Contraseña</asp:Label>
<asp:TextBox runat="server" ID="txtContraseña" TextMode="Password" CssClass="form-control" Font-Names="Segoe UI Light" Font-Size="15pt" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContraseña" CssClass="text-danger" ErrorMessage="El campo de contraseña es obligatorio." ID="RequiredFieldValidator2" />
<br />
<asp:Button ID="btnIniciarSesion" runat="server" OnClick="btnIniciarSesion_Click" Text="Iniciar Sesion" BorderStyle="Solid" CssClass="btn-primary" Font-Names="Segoe UI Light" Font-Size="15pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="linkRegistro" runat="server" NavigateUrl="~/registracion.aspx" Font-Names="Segoe UI Light" Font-Size="15pt">Registrarme</asp:HyperLink>
</asp:Content>
