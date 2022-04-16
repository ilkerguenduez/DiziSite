using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;
using WebProje2.AdminSayfalar;

namespace WebProje2.AdminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["BLOGID"]);
            if (Page.IsPostBack == false)
            {
                var turler = (from x in db.TUR
                              select new
                              {
                                  x.TURAD,
                                  x.TURID
                              }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();

                var kategoriler = (from y in db.KATEGORI
                                   select new
                                   {
                                       y.KATEGORIAD,
                                       y.KATEGORIID
                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();

                var veri = db.BLOG.Find(id);
                TxtBaslik.Text = veri.BLOGBASLIK;
                TxtResim.Text = veri.BLOGRESİM;
                TxtTarih.Text =veri.BLOGTARIH.ToString();
                Txtİcerik.Text = veri.BLOGICERIK;
                DropDownList1.SelectedValue = veri.BLOGTUR.ToString();
                DropDownList2.SelectedValue = veri.BLOGKATEGORI.ToString();

            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.BLOG.Find(id);
            blog.BLOGBASLIK = TxtBaslik.Text;
            blog.BLOGICERIK = Txtİcerik.Text;
            blog.BLOGKATEGORI =byte.Parse(DropDownList2.SelectedValue);
            blog.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            blog.BLOGRESİM = TxtResim.Text;
            blog.BLOGTARIH =DateTime.Parse(TxtTarih.Text);
            var res = db.SaveChanges();
            if (res>0)
            {
                Response.Redirect("Bloglar.Aspx");
            }
            else
            {
                Response.Write("Hata");
            }
        }
    }
}