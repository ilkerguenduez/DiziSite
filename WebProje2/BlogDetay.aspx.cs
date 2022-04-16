using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.BLOG.Where(x => x.BLOGID == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var yorumlar = db.YORUM.Where(x => x.YORUMBLOG == id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            YORUM y = new YORUM();
            y.YORUMCUNICKNAME = TxtKullanıcıAd.Text;
            y.MAIL = TxtMail.Text;
            y.YORUMICERIK = TxtYorum.Text;
            y.YORUMBLOG = id;
            db.YORUM.Add(y);
            db.SaveChanges();
            Response.Redirect("BlogDetay.Aspx?BLOGID=" + id);
        }
    }
}