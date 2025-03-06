using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Teacher_Class")]
    public class Teacher_Class
    {
        [Column("teacherid")]
        public Guid TeacherID { get; set; }
        [Column("classid")]
        public Guid ClassID { get; set; }
    }
}
