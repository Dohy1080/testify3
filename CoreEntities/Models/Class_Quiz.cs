using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Class_Quiz")]
    public class Class_Quiz
    {
        [Column("classid")]
        public Guid ClassID { get; set; }
        [Column("quizid")]
        public Guid QuizID { get; set; }
    }
}
