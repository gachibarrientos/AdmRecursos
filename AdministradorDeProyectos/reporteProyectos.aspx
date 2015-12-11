<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="reporteProyectos.aspx.cs" Inherits="AdministradorDeProyectos.reporteProyectos" %>
<%@Register assembly="Microsoft.ReportViewer.WebForms,
Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91"
namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server">
    </rsweb:ReportViewer>
    </asp:Content>
