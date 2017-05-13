<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contato.aspx.cs" Inherits="Contato" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ConteudoPrincipal" Runat="Server">
    <p class="titulo">
Contato
</p>
<table style="border: solid 1px #c8bfe7;"  bgcolor="#EEEEEE" >
<tr>
<td>
    (11) 9297-9945
    <br />
    (11) 8468-0687
    <br />
    (11) 4094-3163
</td>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>
    Neide Albuquerque
    <br /> 
    KGR Eventos e Decoração
</td>
</tr>
</table>
<br />
<table width="100%">
<tr><td align=center>
<table runat="server" id="tbl1" style="border: solid 1px #c8bfe7;background-color:#EEEEEE" width="600" height="300">
<tr><td colspan="2">
<p class="titulo">
Envie uma mensagem que entraremos em contato
</p>
</td></tr>

<tr><td>Nome&nbsp;(*)</td><td align="left"><asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvNome" runat="server" 
        ErrorMessage="Por favor digite o seu nome" ControlToValidate="txtNome"></asp:RequiredFieldValidator>
    </td></tr>

<tr><td>Telefone</td><td align="left">(<asp:TextBox MaxLength="2" ID="txtDDD" 
        Text="11" runat="server" Width="18" />)<asp:TextBox Width="82" 
        ID="txtTelefone" MaxLength="9" runat="server"></asp:TextBox>
    </td></tr>

<tr><td>E-Mail&nbsp;(*)</td><td align="left"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="cvaEmail" runat="server" ClientValidationFunction="echeck"
        ErrorMessage="O e-mail digitado não é válido" ControlToValidate="txtEmail" 
        onservervalidate="cvaEmail_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
    </td></tr>

<tr><td colspan="2" align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<textarea runat="server" id="conteudoEmail" style="width:550px;height:100px"></textarea>

</td></tr>


<tr><td colspan="2"><asp:Button ID="btnEnviar" runat="server" 
        Text="&nbsp;&nbsp;&nbsp;Enviar&nbsp;&nbsp;&nbsp;" 
        onclick="btnEnviar_Click" />
</td></tr>
</table>
</td></tr>
</table>

<table width="100%" runat="server" id="tbl2" Visible="false">
<tr><td align=center>
    <table style="border: solid 1px #c8bfe7;background-color:#EEEEEE" width="600">
    <tr><td colspan="2">
    <p class="titulo">
    Sua mensagem foi enviada.
    </p>
    <p class="titulo">
    Em breve entraremos em contato.
    </p>
    <p class="titulo">
    Obrigado!
    </p>
    </td></tr>
    </table>
</td></tr></table>


<table width="100%" runat="server" id="tbl3" Visible="false">
<tr><td align=center>
    <table style="border: solid 1px #c8bfe7;background-color:#EEEEEE" width="600">
    <tr><td colspan="2">
    <p class="titulo">
    <font color="red">Sua mensagem NÃO PÔDE ser enviada</font>
    </p>
    <p class="titulo" style="font-size:12px">
    Por favor clique <a href="javascript:history.back()">aqui</a> para voltar e verifique se seu endereço de e-mail foi informado corretamente.
    </p>
    </td></tr>
    </table>
</td></tr></table>

<script>

function echeck(source, clientside_arguments) {
        var str = document.getElementById('<%=txtEmail.ClientID%>').value;
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   clientside_arguments.IsValid=false;
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   clientside_arguments.IsValid=false;
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    clientside_arguments.IsValid=false;
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    clientside_arguments.IsValid=false;
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    clientside_arguments.IsValid=false;
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    clientside_arguments.IsValid=false;
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    clientside_arguments.IsValid=false;
		    return false
		 }
         clientside_arguments.IsValid=true;
 		 return true;
	}

</script>

</asp:Content>


