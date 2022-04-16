using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2.AdminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["YORUMID"]);
            if (Page.IsPostBack == false)
            {
                var veri = db.YORUM.Find(id);
                TxtBaslik.Text = veri.BLOG.BLOGBASLIK;
                TxtKullaniciAd.Text = veri.YORUMCUNICKNAME;
                Txtİcerik.Text = veri.YORUMICERIK;
            }
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            int g = int.Parse(Request.QueryString["YORUMID"]);
            var yorum = db.YORUM.Find(g);
            yorum.YORUMCUNICKNAME = TxtKullaniciAd.Text;
            yorum.YORUMICERIK = Txtİcerik.Text;
            var res = db.SaveChanges();
            if (res > 0)
            {
                Response.Redirect("Yorumlar.Aspx");
            }
            else
            {
                Response.Write("Hata");
            }
        }
    }
}