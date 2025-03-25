using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
        [Table("Student")]
        public class Student
        {
            [Column("id")]
            public Guid Id { get; set; }
            [Column("name")]
            public string? Name { get; set; }
            [Column("gender")]
            public  string? Gender { get; set; }
            [Column("mail")]
            public  string? Mail {  get; set; }
            [Column("phonenumber")]
            public  string? PhoneNumber { get; set; }
            [Column("birthdate")]
            public DateTime BirthDate { get; set; }
            [Column("image")]
            public required string Image { get; set; }
            [Column("firstlogin")]
            public DateTime FirstLogin { get; set; }
            [Column("subjectid")]
            public Guid Subject { get; set; }
            [Column("studentcode")]
            public string? StudentCode { get; set; }
            [ValidateNever]
            public IEnumerable<Teacher_Student> Teacher_Students { get; set; }
            public ICollection<Notification> Notifications { get; set; }
            public IEnumerable<StudentAnswer> StudentAnswers { get; set; }
            public ICollection<Feedback> Feedbacks { get; set; }
            public ICollection<Score> Scores { get; set; }
            // public Class Classes { get; set; }
    }
}
