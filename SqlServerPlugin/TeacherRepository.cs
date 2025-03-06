using BusinessLogic.Repository;
using CoreEntities.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlServerPlugin
{
    public class TeacherRepository : ITeacherRepository
    {
        private CustomDBContext _dbContext;
        public TeacherRepository(CustomDBContext dBContext)
        {
            _dbContext = dBContext;
        }
        public List<Teacher> GetAllTeachers()
        {
            return _dbContext.Teachers.ToList();
        }

    }
}
