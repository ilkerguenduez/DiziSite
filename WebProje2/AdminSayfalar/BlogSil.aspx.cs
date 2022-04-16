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
    public partial class BlogSil : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.BLOG.Find(id);
            db.BLOG.Remove(blog);
            db.SaveChanges();
            Response.Redirect("Bloglar.Aspx");
        }
    }
}