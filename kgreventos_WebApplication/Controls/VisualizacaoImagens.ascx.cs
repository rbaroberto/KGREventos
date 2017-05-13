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
using System.ComponentModel;
using System.IO;

public partial class VisualizacaoImagens : System.Web.UI.UserControl
{
    private string nome;
    [Browsable(true)]
    public string Nome {
        get {
            return this.nome;
        }
        set {
            this.nome = value;
        }
    }

    private int qtdPorPagina = 30;
    [Browsable(true)]
    public int QtdPorPagina
    {
        get
        {
            return this.qtdPorPagina;
        }
        set
        {
            this.qtdPorPagina = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ViewState.Add("Pagina", 1);
            CarregarImagens();
        }
    }

    protected int qtdArquivos;

    private void CarregarImagens() {

        DirectoryInfo diretorio = new DirectoryInfo(Server.MapPath("images/" + this.nome + "/pequenas"));

        int contLinha = 0;
        int i = (Convert.ToInt16(ViewState["Pagina"]) -1) * this.qtdPorPagina;
        HtmlTableRow linha = new HtmlTableRow();
        FileInfo[] arquivos = diretorio.GetFiles();

        qtdArquivos = arquivos.Length;

        for(int contGeral = 0; contGeral< this.qtdPorPagina;contGeral++)
        {
            if (i + contGeral >= arquivos.Length) {
                break;
            }

            FileInfo temp = arquivos[i+contGeral];

            if (contLinha > 4)
            {
                tblPrincipal.Rows.Add(linha);
                linha = new HtmlTableRow();
                contLinha = 0;
            }

            HtmlTableCell celula = new HtmlTableCell();
            celula.Width = "100px";
            celula.Align = "center";
            celula.InnerHtml = "<a href='images/" + this.Nome + "/grandes/" + temp.Name + "' class='lightwindow page-options' title='' author='' caption=''>";
            celula.InnerHtml += "<img onclick='setaImagemFoco(" + (i + contGeral).ToString() + ", \"" + this.nome + "\")' style='border: solid 1px #c8bfe7' src='images/" + this.Nome + "/pequenas/" + temp.Name + "' /></a>";
            linha.Cells.Add(celula);

            contLinha++;
        }

        tblPrincipal.Rows.Add(linha);

        int qtdPaginas = arquivos.Length / this.qtdPorPagina;
        if (this.qtdPorPagina * qtdPaginas < arquivos.Length) {
            qtdPaginas++;
        }
        if (qtdPaginas == 1)
        {
            tblPaginacao.Visible = false;
        }
        else
        {

            lblInformacaoPaginacao.Text = "<b>" + ViewState["Pagina"].ToString() + "</b> de " + qtdPaginas.ToString();

            if (Convert.ToInt16(ViewState["Pagina"]) == 1)
            {
                lnkAnterior.Visible = false;
            }
            else
            {
                lnkAnterior.Visible = true;
            }

            if (Convert.ToInt16(ViewState["Pagina"]) == qtdPaginas)
            {
                lnkProximo.Visible = false;
            }
            else
            {
                lnkProximo.Visible = true;
            }
        }
    }
    protected void lnkAnterior_Click(object sender, EventArgs e)
    {
        ViewState["Pagina"] = Convert.ToInt16(ViewState["Pagina"]) - 1;
        CarregarImagens();
    }
    protected void lnkProximo_Click(object sender, EventArgs e)
    {
        ViewState["Pagina"] = Convert.ToInt16(ViewState["Pagina"]) + 1;
        CarregarImagens();
    }
}
