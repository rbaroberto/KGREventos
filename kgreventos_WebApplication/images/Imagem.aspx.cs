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
using System.IO;

public partial class images_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DirectoryInfo diretorio = new DirectoryInfo(Server.MapPath("../images/" + Request.QueryString["pasta"] + "/pequenas"));
        FileInfo[] arquivos = diretorio.GetFiles();

        int indice = Convert.ToInt32(Request.QueryString["Indice"]);

        if (indice < 0) {
            indice = 0;
        }

        if (indice >= arquivos.Length) {
            indice = arquivos.Length - 1;
        }
        
        Response.Redirect("../images/" + Request.QueryString["pasta"] + "/grandes/" + arquivos[indice].Name);
    }
}
