using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2
{
    public partial class Hakkinda : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.HAKKIMIZDA.ToList();
            Repeater1.DataBind();
        }
    }
}