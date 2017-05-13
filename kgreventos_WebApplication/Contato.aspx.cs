using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text.RegularExpressions;
using System.Net.Mail;
using System.Xml;

public partial class Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    private void EnviarMensagem(string destino) {

        string deEmail = txtEmail.Text;
        string deNome = txtNome.Text;
        string paraEmail = destino;
        string Assunto = "Contato KGR Eventos";
        string mensagem = "Nome: " + txtNome.Text;
        mensagem += "<br>Telefone: (" + txtDDD.Text + ") " + txtTelefone.Text;
        mensagem += "<br><br><pre>" + conteudoEmail.Value + "</pre>";

        MailMessage email = new MailMessage();
        SmtpClient SMTP = new SmtpClient();
        string host = "envio.redehost.com.br";

        email.From = new MailAddress(deEmail, deNome);
        email.To.Clear();
        email.To.Add(paraEmail);
        email.Subject = Assunto;
        email.IsBodyHtml = true;
        email.Body = mensagem;

        SMTP.Host = host;

        try
        {
            SMTP.Send(email);

            LogarMensagem(deEmail, deNome, mensagem, "sucesso");
        }
        catch (Exception ex) {
            LogarMensagem(deEmail, deNome, mensagem, "falha");
            throw ex;
        }

        email = null;
        SMTP = null;

    }


    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (cvaEmail.IsValid)
        {
            try
            {
                EnviarMensagem("neide@kgreventos.com.br");
                EnviarMensagem("neideealbuquerque@gmail.com");

                tbl2.Visible = true;
                tbl1.Visible = false;
                tbl3.Visible = false;
            }
            catch {
                tbl1.Visible = false;
                tbl2.Visible = false;
                tbl3.Visible = true;
            }

        }
    }

    private void LogarMensagem(string email, string nome, string mensagem, string tipo) {
        XmlDocument xml = new XmlDocument();
        xml.Load(Server.MapPath("mensagens.xml"));
        XmlElement item = xml.CreateElement("Item");
        item.SetAttribute("Data", DateTime.Now.ToString());
        item.SetAttribute("EMail", email);
        item.SetAttribute("Nome", nome);
        item.SetAttribute("Mensagem", mensagem);
        item.SetAttribute("Tipo", tipo);
        xml.DocumentElement.AppendChild(item);
        xml.Save(Server.MapPath("mensagens.xml"));
    }

    protected void cvaEmail_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Trim() == String.Empty) {
            cvaEmail.ErrorMessage = "Por favor digite seu e-mail";
            args.IsValid = false;
        }else{
            cvaEmail.ErrorMessage = "O e-mail digitado não é válido";
            args.IsValid = IsValidEmail(args.Value);
        }
    }

    private bool IsValidEmail(string inputEmail)
    {
        string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
              @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
              @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
        Regex re = new Regex(strRegex);
        if (re.IsMatch(inputEmail))
            return (true);
        else
            return (false);
    }

}
