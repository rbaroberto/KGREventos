<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ConteudoPrincipal" runat="server">
<div style="padding-bottom:4px; width:100%; height:100%; background-color:#D9D2EE">
    <br />
    <table width="100%">
        <tr>
            <td><a href="Decoracao.aspx"><img src="images/decoracao.jpg" style="border: solid 1px #46348b" /></a></td>
            <td rowspan="2" valign="top">
            <p align="center" 
                    style="font-family: 'Lao UI'; font-size: 16px; font-weight: bold">
            BEM VINDO A 
                <span style="font-family: 'Segoe Print'; font-size: 24px; font-weight: bold">KGR Eventos & Decoração</span>!
            <br /><br />
            Onde o seu sonho se torna realidade!
            </p>   
            <p align="left" style="margin-left:8px; margin-right:8px; font-family: Cambria; font-weight: bold; color: #624BBC; font-size: 15px;">
            Trabalhamos com Festas de Casamento, 15 anos e Infantis.
            <br />Eventos e Decorações em geral.
            </p>
            <p style="margin-left:8px; margin-right:8px">
            <br />Navegue pelo menu lateral ou clique nas imagens nessa página para navegar pelo site e ver alguns dos nossos trabalhos realizados.
            </p> 
                           
            </td>
            <td><a href="Bolo.aspx"><img src="images/bolos.jpg" style="border: solid 1px #46348b" /></a></td>
        </tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td>    
                <a href="MesaDecorada.aspx"><img src="images/mesaDecorada.jpg" style="border: solid 1px #46348b" /></a>
            </td>
            <td align="center">
               <table cellpadding="0" cellspacing="0" onclick="javascript:location.href='Contato.aspx'" style="cursor:hand; width:159px; height:200px;border:solid 1px black">
               <tr><td height="38" bgcolor="white" style="font-family: 'Monotype Corsiva'; font-size: 24px; font-weight: bold">Contato</td></tr>
               <tr><td><br /><img height="120" src="images/contato.gif" /><br /><br /></td></tr>
               </table>
            </td>
            <td>
                <a href="Buque.aspx"><img src="images/buque.jpg" style="border: solid 1px #46348b" /></a>
            </td>
        </tr>
     </table>
<br />
</div>
</asp:Content>