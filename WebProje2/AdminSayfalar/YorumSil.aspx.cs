using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2.AdminSayfalar
{
    public partial class YorumSil : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.YORUM.Find(id);
            db.YORUM.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("Yorumlar.Aspx");
        }
    }
}