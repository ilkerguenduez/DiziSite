//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebProje2.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class BLOG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BLOG()
        {
            this.YORUM = new HashSet<YORUM>();
        }
    
        public int BLOGID { get; set; }
        public string BLOGBASLIK { get; set; }
        public string BLOGICERIK { get; set; }
        public Nullable<System.DateTime> BLOGTARIH { get; set; }
        public string BLOGRESİM { get; set; }
        public Nullable<byte> BLOGTUR { get; set; }
        public Nullable<byte> BLOGKATEGORI { get; set; }
    
        public virtual KATEGORI KATEGORI { get; set; }
        public virtual TUR TUR { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<YORUM> YORUM { get; set; }
    }
}