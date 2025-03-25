using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    public class Answer
    {
        public Guid Id { get; set; }
        public string? Text { get; set; }
        public bool Incorrect { get; set; }
        public Guid QuestionID { get; set; }

        [ValidateNever]
        public IEnumerable<StudentAnswer> StudentAnswers { get; set; }
        public Question Questions { get; set; }

    }
}
