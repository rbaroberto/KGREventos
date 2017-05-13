using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Versao"] == null)
        {
            imgTopo.ImageUrl = "images/topo.gif";
            imgTopo.Width = 1020;
            imgTopo.Height = 140;
        }
        else {
            imgTopo.ImageUrl = "images/topo2.gif";
            imgTopo.Width = 1020;
            imgTopo.Height = 85;
        }      
    }
}
