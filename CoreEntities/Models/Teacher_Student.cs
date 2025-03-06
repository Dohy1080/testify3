using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Teacher_Student")]
    public class Teacher_Student
    {
        [Column("teacherid")]
        public Guid TeacherID { get; set; }
        [Column("studentid")]
        public Guid StudentID { get; set; }
    }
}
