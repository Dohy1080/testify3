using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    public class CreateQuiz
    {
        public string Title { get; set; }
        public DateTime ExpiryDate { get; set; }
        public DateTime Duration { get; set; }
        public int QuestionCount { get; set; } // Số câu hỏi
    }
}
