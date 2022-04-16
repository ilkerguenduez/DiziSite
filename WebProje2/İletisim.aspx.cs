using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2
{
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        BlogDbEntities db = new BlogDbEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            ILETISIM g = new ILETISIM();
            g.ADSOYAD = TxtAd.Text;
            g.MAIL = TxtMail.Text;
            g.TELEFON = TxtTelefon.Text;
            g.SEHIR = TxtSehir.Text;
            g.MESAJICERIK = TxtMesaj.Text;
            db.ILETISIM.Add(g);
            db.SaveChanges();
        }
    }
}