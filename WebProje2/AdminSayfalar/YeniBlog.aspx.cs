using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;


namespace WebProje2.AdminSayfalar
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
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
            }
            
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            BLOG b = new BLOG();
            b.BLOGBASLIK = TxtBaslik.Text;
            b.BLOGRESİM = TxtResim.Text;
            b.BLOGTARIH = DateTime.Parse(TxtTarih.Text);
            b.BLOGICERIK = Txtİcerik.Text;
            b.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            b.BLOGKATEGORI = byte.Parse(DropDownList2.SelectedValue);
            db.BLOG.Add(b);
            db.SaveChanges();
            Response.Redirect("Bloglar.Aspx");
        }
    }
}