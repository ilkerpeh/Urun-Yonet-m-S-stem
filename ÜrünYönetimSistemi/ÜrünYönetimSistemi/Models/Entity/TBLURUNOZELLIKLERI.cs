//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ÜrünYönetimSistemi.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBLURUNOZELLIKLERI
    {
        public int URUNOZELLIGIID { get; set; }
        public string OZELLIKADI { get; set; }
        public string OZELLIKDEGERI { get; set; }
        public Nullable<int> URUNID { get; set; }
    
        public virtual TBLURUNLER TBLURUNLER { get; set; }
    }
}
