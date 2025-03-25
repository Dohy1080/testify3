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
    public class GradeRepository : IGradeRepository
    {
        private readonly CustomDBContext _dbContext;

        public GradeRepository(CustomDBContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<List<Grade>> GetAllGradesAsync()
        {
            return await _dbContext.Grades.ToListAsync();
        }
    }
}
