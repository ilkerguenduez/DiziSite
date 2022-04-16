﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje2.Entity;

namespace WebProje2
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        BlogDbEntities db = new BlogDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var bloglar = db.BLOG.Where(x => x.BLOGKATEGORI == id).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var kategoriler = db.KATEGORI.ToList();
            Repeater2.DataSource = kategoriler;
            Repeater2.DataBind();

            var sonblog = db.BLOG.ToList();
            Repeater3.DataSource = sonblog;
            Repeater3.DataBind();

            var sonyorum = db.YORUM.Take(3).ToList();
            Repeater4.DataSource = sonyorum;
            Repeater4.DataBind();
        }
    }
}