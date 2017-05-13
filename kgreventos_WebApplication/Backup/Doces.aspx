<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Portfolio" Codebehind="Doces.aspx.cs" %>

<%@ Register src="Controls/VisualizacaoImagens.ascx" tagname="VisualizacaoImagens" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConteudoPrincipal" Runat="Server">
<p class="titulo">Doces finos 
</p>
<p>
<b>Mesa de Doces Finos</b>
<br /> 
Camafeus de Damasco, Nozes ou Avelã, Copinhos de Chocolate Branco com Abacaxi e Coco, Copinho de Chocolate com Brigadeiro, Trufas Bombons e muito mais. 
</p>
    
<p>
<b>Bem Casados</b>
<br /> 
Com vários sabores e embalagem à sua escolha.
</p>
    
        
    <uc1:VisualizacaoImagens ID="VisualizacaoImagens1" Nome="Portfolio" runat="server" QtdPorPagina="15" />


    
</asp:Content>

