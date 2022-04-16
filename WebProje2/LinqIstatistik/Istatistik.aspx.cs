using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2.Linq_İstatistik
{
    public partial class İstatistik : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            LblBlog.Text = db.BLOG.Count().ToString();
            LblYorum.Text = db.YORUM.Count().ToString();
            LblDizi.Text = db.BLOG.Where(x => x.BLOGTUR == 1).Count().ToString();
            LblFilm.Text = db.BLOG.Where(x => x.BLOGTUR == 2).Count().ToString();
            LblBelgesel.Text = db.BLOG.Where(x => x.BLOGTUR == 3).Count().ToString();
            LblAnimasyon.Text = db.BLOG.Where(x => x.BLOGTUR == 4).Count().ToString();
            LblBlogYorum.Text = db.BLOG.Where(z=>z.BLOGID==(db.YORUM.GroupBy(x => x.YORUMBLOG).OrderByDescending(x => x.Count()).Select(y => y.Key).FirstOrDefault())).Select(k=>k.BLOGBASLIK).FirstOrDefault();
           //Sql Query ile  //LblBlogYorum.Text = db.YorumGetir()?.FirstOrDefault()?.BLOGBASLIK;
        }
    }
}