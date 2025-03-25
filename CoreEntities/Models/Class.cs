using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Class")]
    public class Class
    {
        [Column("id")]
        public Guid Id { get; set; }
        [Column("name")]
        public string Name { get; set; }
        [Column("totalstudent")]
        public int TotalStudent {  get; set; }
        [Column("gradeID")]
        public Guid? GradeID{ get; set; }
        [ValidateNever]
       

        public Grade Grades { get; set; }
        public IEnumerable<Teacher_Class> Teacher_Classes { get; set; }
        // public ICollection<Student> Students { get; set; }
    }
}
