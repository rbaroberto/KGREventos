<%@Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="MesaDecorada" Codebehind="Buque.aspx.cs" %>

<%@Register src="Controls/VisualizacaoImagens.ascx" tagname="VisualizacaoImagens" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ConteudoPrincipal" Runat="Server">
<table width="100%" height="100%">
<tr><td valign="middle">

    <uc1:VisualizacaoImagens ID="VisualizacaoImagens1" QtdPorPagina="15" Nome="Buque" runat="server" />

</td></tr></table>    
</asp:Content>