using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Class")]
    public class Class
    {
        [Column("id")]
        public Guid Id { get; set; }
        [Column("name")]
        public string? Name { get; set; }
        [Column("totalstudent")]
        public int TotalStudent {  get; set; }
        [Column("GradeID")]
        public Guid? GradeID { get; set; }
       
    }
}
