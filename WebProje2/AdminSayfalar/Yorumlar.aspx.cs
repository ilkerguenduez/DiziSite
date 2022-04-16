using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2.AdminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var yorumlar = (from x in db.YORUM
                            select new
                            {
                                x.YORUMID,
                                x.YORUMCUNICKNAME,
                                x.BLOG.BLOGBASLIK,
                                x.YORUMICERIK
                            }).ToList(); 
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}