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
        public string Name { get; set; }
        [Column("totalstudent")]
        public string TotalStudent {  get; set; }
        [Column("garadeid")]
        public Guid GradeID { get; set; }
        [Column("classid")]
        public Guid ClassID { get; set; }
    }
}
