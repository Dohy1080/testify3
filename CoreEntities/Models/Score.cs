using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Score")]
    public class Score
    {
       
        [Column("id")]
        public Guid ID { get; set; }
        [Column("starttime")]
        public DateTime StartTime { get; set; }
        [Column("endtime")]
        public DateTime EndTime { get; set; }
        [Column("status")]
        public string? Status { get; set; }
        [Column("studentid")]
        public Guid StudentID { get; set; }
        [Column("quizid")]
        public Guid QuizID { get; set; }
        public Student? Student { get; set; }

        [ValidateNever]
        public Quiz Quizzes { get; set; }
        public Student Students { get; set; }
    }
}
