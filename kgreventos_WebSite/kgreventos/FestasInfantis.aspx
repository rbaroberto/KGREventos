<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FestasInfantis.aspx.cs" Inherits="Portfolio" %>

<%@ Register src="Controls/VisualizacaoImagens.ascx" tagname="VisualizacaoImagens" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConteudoPrincipal" Runat="Server">

<table>

<tr>

<td width="50%" valign="top">
    <p class="titulo">Festas Infantis
    </p>
    <p>
    Você tem o espaço? Deixe tudo por nossa conta que a Festa acontece.
    <br />
    Com Brincadeiras, Bolo Decorado (de mesa) e para servir, Doces, Salgados, Refrigerante, Lembrancinhas. 
    <br />
    Linda Decoração com o Tema escolhido e com o que mais você pensar.
    </p>
</td>
<td width="50%" valign="top">
    <p class="titulo">Serviço de Buffet
    </p>
    <p>
    Vamos até você! 
    Escolha sua opção!
    <br />
    Cardápios Variados do Tradicional Coquetel ao Descontraído Churrasco ou ainda o Delicioso Jantar com várias opções de cardápios do mais acessível ao mais sofisticado. 
</td>

</tr>
<tr><td colspan="2">    <a href="Contato.aspx">Consulte nossos preços</a>
</td></tr>

</table>


<br />

    
        
    <uc1:VisualizacaoImagens ID="VisualizacaoImagens1" Nome="FestasInfantis" runat="server" QtdPorPagina="10" />


    
</asp:Content>

