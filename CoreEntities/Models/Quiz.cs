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
        public Guid Id { get; set; }
        [Column("title")]
        public string Title { get; set; }
        [Column("expirydate")]
        public DateTime ExpiryDate { get; set; }
        [Column("duration")]
        public DateTime Duration { get; set; }
        [Column("timelimit")]
        public DateTime TimeLimit { get; set; }
    }
}
