﻿using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
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
        [Column("Id")]
        public Guid ID { get; set; }
        public bool InParent { get; set; }
        [Column("ParentId")]
        public Guid ParentID { get; set; }
        public DateTime AnswerTime { get; set; }
        [Column("StudentId")]
        public Guid StudentID { get; set; }
        [Column("SubjectId")]
        public Guid SubjectID { get; set; }

        [ValidateNever] 
        public Guid TeacherID { get; set; }
        public Teacher Teachers { get; set; }
        public Student Students { get; set; }
        public Subject Subjects {  get; set; }
    }
}
