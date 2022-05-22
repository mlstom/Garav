using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat_Web
{
    public partial class Mojazak : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Web Logika = new Web();
            string email = (string)Session["email"];
            DataList1.DataSource = Logika.MojaZak(email);
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mojazak.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profil.aspx");
        }
    }
}