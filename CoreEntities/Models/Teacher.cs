using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreEntities.Models
{
    [Table("Teacher")]
    public class Teacher
    {
        [Column("id")]
        public Guid Id { get; set; }
        [Column("name")]
        public string? Name { get; set; }
        [Column("phone_number")]
        public string? PhoneNumber { get; set; }
        [Column("subject")]
        public string? Subject { get; set; }
        [Column("birthdate")]
        public DateTime BirthDate { get; set; }
        [Column("gender")]
        public string? Gender { get; set; }
        [Column("image")]
        public string? Image { get; set; }
        [Column("firstlogin")]
        public DateTime FirstLogin { get; set; }
        [Column("email")]
        public string? Email { get; set; }

    }
}
 