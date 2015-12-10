<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AdministradorDeProyectos.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
<asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label" ID="Label1">Correo electrónico</asp:Label>
<asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." ID="RequiredFieldValidator1" />
<br />
<br />
<asp:Label runat="server" AssociatedControlID="txtContraseña" CssClass="col-md-2 control-label" ID="Label2">Contraseña</asp:Label>
<asp:TextBox runat="server" ID="txtContraseña" TextMode="Password" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtContraseña" CssClass="text-danger" ErrorMessage="El campo de contraseña es obligatorio." ID="RequiredFieldValidator2" />
<br />
<asp:Button ID="btnIniciarSesion" runat="server" OnClick="btnIniciarSesion_Click" Text="Iniciar Sesion" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="linkRegistro" runat="server" NavigateUrl="~/registracion.aspx">Registrarme</asp:HyperLink>
</asp:Content>
