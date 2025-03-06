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
        public static int Id { get; set; }
        [Column("id")]
        public Guid ID { get; set; }
        [Column("starttime")]
        public DateTime StartTime { get; set; }
        [Column("endtime")]
        public DateTime EndTime { get; set; }
        [Column("status")]
        public string Status { get; set; }
        [Column("sudentid")]
        public Guid StudentID { get; set; }
        [Column("quizid")]
        public Guid QuizID { get; set; }
        public Student Student { get; set; }
    }
}
