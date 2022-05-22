using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat_Web
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string lozinka = TextBox2.Text;
            
            Web Logika = new Web();
            int rez = Logika.Logovanje(email, lozinka);
            if(rez == 1)
            {
                Session["email"] = email;
                Session["lozinka"] = lozinka;
                Response.Redirect("Home.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Novnalog.aspx");
        }
    }
}