using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Globalization;
namespace Projekat_Web
{
    public partial class Zakazivanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] arg = (string[])Session["argumenti"];
            string usluga = arg[0];
            string gde = arg[1];
            string cena = arg[2];
            Label1.Text =(string)Session["email"];
            Label2.Text = usluga;
            Label3.Text = gde;
            Label4.Text = cena;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Web Logika = new Web();
            DataSet termini = new DataSet();
            string[] arg = (string[])Session["argumenti"];
            string prodavnica= arg[1];
            DataSet vremena = new DataSet();
            vremena.Clear();
            termini.Clear();
            termini = Logika.Termini(prodavnica);
            vremena = Logika.Vremena();
            

            string pom = TextBox1.Text;

            DateTime now = DateTime.Now;
            DateTime time;
            DateTime time2= DateTime.ParseExact(pom, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            
            vremena.Tables[0].AcceptChanges();
           for (int j = 0; j < termini.Tables[0].Rows.Count; j++)
           {
                for (int i = 0; i < vremena.Tables[0].Rows.Count; i++)
                {
                    string ter = termini.Tables[0].Rows[j]["dan"].ToString();
                    if (ter.Length >= 8)
                    {
                        ter = ter.Remove(ter.Length - 9);

                        time = DateTime.ParseExact(ter, "d.M.yyyy.", CultureInfo.InvariantCulture);
                        if (time == time2)
                        {
                            if (vremena.Tables[0].Rows[i]["vreme"].ToString() == termini.Tables[0].Rows[j]["vreme"].ToString())
                            {
                                vremena.Tables[0].Rows[i].Delete();
                            }
                        }

                    }
                }
                vremena.Tables[0].AcceptChanges();
           }


            
            Vreme.vreme = vremena;
            Vreme.vreme.AcceptChanges();
            int rez = DateTime.Compare(time2, now);
            if (rez>=0)
            {
                DropDownList1.DataSource = vremena;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "vreme";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }
            else
            {
                vremena.Clear();
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "id";
                DropDownList1.DataValueField = "vreme";
                DropDownList1.DataBind();
            }
           
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Web Logika = new Web();
            string[] arg = (string[])Session["argumenti"];
            string naziv = arg[1];
            string email = (string)Session["email"];
            int idkor = Logika.NadjiKor(email);
            int idprod = Logika.NadjiProd(naziv);
            string pom = TextBox1.Text;
            DateTime time2 = DateTime.ParseExact(pom, "yyyy-MM-dd", CultureInfo.InvariantCulture);
             
            
            int tr =Convert.ToInt32(DropDownList1.SelectedValue)-1;
            string vreme = Vreme.vreme.Tables[0].Rows[tr]["vreme"].ToString();
            string usluga = arg[0];
            int rez = Logika.UpisiTermin(idkor,idprod,pom,vreme,usluga);
            if (rez == 1)
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}