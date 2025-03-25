using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Quiz")]
    public class Quiz
    {
        [Column("id")]
        public Guid ID { get; set; }
        [Column("title")]
        public string? Title { get; set; }
        [Column("expirydate")]
        public DateTime ExpiryDate { get; set; }
        [Column("duration")]
        public DateTime Duration { get; set; }
        [Column("timelimit")]
        public DateTime TimeLimit { get; set; }
        public int QuestionCount { get; set; } // Số câu hỏi


        [ValidateNever]
        public Score Scores { get; set; }
        
        public ICollection<Question> Questions { get; set; }

    }
}
