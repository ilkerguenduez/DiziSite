using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var blog = (from x in db.BLOG
                        select new
                        {
                            x.BLOGID,
                            x.BLOGBASLIK,
                            x.BLOGTARIH,
                            x.TUR.TURAD,
                            x.KATEGORI.KATEGORIAD
                        }).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
        }
    }
}