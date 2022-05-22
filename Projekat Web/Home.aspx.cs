using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat_Web
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Web Logika = new Web();
                DataList1.DataSource = Logika.Kategorije();
                DataList1.DataBind();
            }
               
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string commandName = e.CommandName;
            object commandArg = e.CommandArgument;
            int dataItemIndex = e.Item.ItemIndex;
            string komanda = commandArg.ToString();
            if (commandName == "prikazi")
            {
                Web Logika = new Web();
                DataList2.DataSource = Logika.Prodavnice(komanda);
                DataList2.DataBind();

            }
            if (commandName == "zakazi")
            {
                string[] arg = komanda.Split(new char[] { ',' });
                Session["argumenti"] = arg;
                Response.Redirect("Zakazivanje.aspx");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string term = TextBox1.Text;
            Web Logika = new Web();
            DataList3.DataSource = Logika.Search(term);
            DataList3.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mojazak.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profil.aspx");
        }
    }
}