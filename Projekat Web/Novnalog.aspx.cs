using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat_Web
{
    public partial class Novnalog : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string lozinka = TextBox2.Text;
            Web Logika = new Web();
            int rez = Logika.NovNalog(email, lozinka);
            if (rez == 0)
            {
                Session["email"] = email;
                Session["lozinka"] = lozinka;
                Response.Redirect("Home.aspx");
            }
            else
            {  
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}