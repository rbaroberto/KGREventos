<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bolo.aspx.cs" Inherits="Portfolio" %>

<%@ Register src="Controls/VisualizacaoImagens.ascx" tagname="VisualizacaoImagens" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConteudoPrincipal" Runat="Server">

<table>
<tr>
<td width="50%" valign="top">
<p class="titulo">
Bolo: Indispensável neste momento Tão Especial!
</p>
<p>
Bolos para várias ocasiões, estilos, com vários sabores e preços
<p class="titulo2" style="font-size:13px">
Aceitamos encomendas a parte!
</p>
<br />
<P>
<a href="Contato.aspx">Consulte nossos preços</a>
</p>

</td>
<td width="50%">
<p class="titulo">Doces Finos</p>
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

</td>
</tr>

</table>
        
    <uc1:VisualizacaoImagens ID="VisualizacaoImagens1" Nome="Bolo" runat="server" QtdPorPagina="15" />


    
</asp:Content>

