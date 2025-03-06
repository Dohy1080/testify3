using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Question")]
    public class Question
    {
        [Column("id")]
        public Guid ID { get; set; }
        [Column("timelimit")]
        public DateTime TimeLimit { get; set; }
        [Column("content")]
        public string Content { get; set; }
        [Column("quizid")]
        public Guid QuizID { get; set; }    
    }
}
