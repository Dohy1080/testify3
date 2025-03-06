using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Feedback")]
    public class Feedback
    {
        [Column("id")]
        public Guid ID { get; set; }
        [Column("parentid")]
        public string? ParentID { get; set; }
        [Column("inparent")]
        public string? InParent {  get; set; }
        [Column("answertime")]
        public DateTime AnswerTime { get; set; }
        [Column("teacherid")]
        public Guid TeacherID { get; set; }
        [Column("studentid")]
        public Guid StudentID { get; set; }
        [Column("subjetid")]
        public Guid SubjectID { get; set; }

    }   
    
}
