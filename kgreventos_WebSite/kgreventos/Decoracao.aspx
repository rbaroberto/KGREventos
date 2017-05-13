<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Decoracao.aspx.cs" Inherits="Portfolio" %>

<%@ Register src="Controls/VisualizacaoImagens.ascx" tagname="VisualizacaoImagens" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConteudoPrincipal" Runat="Server">
<p class="titulo">Decoração
</p>
<p>
Decoração em Igrejas, Salões, chácaras, ou em casa! 
<br />
Vários estilos, com criatividade e requinte.
<br />

<a href="Contato.aspx">Consulte nossos preços</a>
</p>
    
        
    <uc1:VisualizacaoImagens ID="VisualizacaoImagens1" Nome="Decoracao" runat="server" QtdPorPagina="15" />


    
</asp:Content>

