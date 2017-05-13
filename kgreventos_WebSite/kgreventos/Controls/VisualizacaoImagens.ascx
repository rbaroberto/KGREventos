<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VisualizacaoImagens.ascx.cs" Inherits="VisualizacaoImagens" %>

<link rel="stylesheet" type="text/css" href="css/lightwindow.css" />
<script type="text/javascript" src="JS/prototype.js"></script>
<script type="text/javascript" src="JS/effects.js"></script>
<script type="text/javascript" src="JS/lightwindow.js"></script>

<table width="100%"><tr><td align="right">(*) Clique na imagem para ampliar</td></tr></table>

<table cellpadding="0" cellspacing="0" ID="tblPrincipal" runat="server" width="100%" height="280">
</table>

<table width="100%" runat="server" id="tblPaginacao"><tr><td>&nbsp;</td></tr><tr><td width="100%" align="center">
        <asp:LinkButton ID="lnkAnterior" runat="server" onclick="lnkAnterior_Click">&lt;&lt;&lt; Anterior</asp:LinkButton>
&nbsp;&nbsp;Exibindo página <asp:Label ID="lblInformacaoPaginacao" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;<asp:LinkButton ID="lnkProximo" runat="server" onclick="lnkProximo_Click">Próxima >>></asp:LinkButton>
</td></tr></table>

<br />
<input type="hidden" id="indiceImagemAtual">    
<input type="hidden" id="pastaImagemAtual">    
    
<script>

function proximaImagem(){

   var indiceAtual = parseInt(document.getElementById('indiceImagemAtual').value)+1;

   if(indiceAtual<<%=qtdArquivos%>){
        vaiParaImagem(+1);
    }

    checaLinkNavegacao();
}

function checaLinkNavegacao(){
    lnk = document.getElementById("lnkImagemAnterior");
       
    var indiceAtual = parseInt(document.getElementById('indiceImagemAtual').value);

    if(parseInt(indiceAtual)<1){
        lnk.style.color="gray";
    }else{
        lnk.style.color="white";
    }
    
    lnk = document.getElementById("lnkProximaImagem");

   if(parseInt(indiceAtual)+1>=<%=qtdArquivos%>){
        lnk.style.color="gray";
    }else{
        lnk.style.color="white";
    }
}

function imagemAnterior(){
    
    var indiceAtual = parseInt(document.getElementById('indiceImagemAtual').value);

    if(parseInt(indiceAtual)>0){
       vaiParaImagem(-1);
    }
    
    checaLinkNavegacao();
       
}

function vaiParaImagem(fator){

    document.getElementById('lightwindow_contents').removeChild(document.getElementById('lightwindow_contents').childNodes[1]);

    //var obj = document.getElementById('lightwindow_image_0');
    
    var param1 = document.getElementById('indiceImagemAtual');
    var param2 = document.getElementById('pastaImagemAtual');
    param1 = parseInt(param1.value) + fator;
    document.getElementById('indiceImagemAtual').value=param1;

    //obj.src = "./images/imagem.aspx?pasta=" + param2.value + "&indice=" + param1;
    var og = document.createElement('img');
    og.setAttribute('src', "./images/imagem.aspx?pasta=" + param2.value + "&indice=" + param1);
    
    var tabela = document.createElement('table');
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.appendChild(og);
    tr.appendChild(td);
    tabela.appendChild(tr);
    tabela.setAttribute("width","100%");
    tabela.setAttribute("height", document.getElementById('lightwindow_contents').getHeight());
    td.setAttribute("align","center");
    td.setAttribute("valign","middle");
    
    document.getElementById('lightwindow_contents').appendChild(tabela);
}
  
  
 function setaImagemFoco(indice, pasta){
    //armazena qual a imagem atual pra funcionar a opção proxima e anterior
    var param1 = document.getElementById('indiceImagemAtual');
    var param2 = document.getElementById('pastaImagemAtual');
    param1.value = indice;
    param2.value = pasta;
    
    checaLinkNavegacao();
 }
</script>