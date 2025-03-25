using BusinessLogic.Interface;
using BusinessLogic.Repository;
using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.TeacherUseCase
{
    public class ClassService : IClassService
    {
        private readonly IClassRepository _repository;

        public ClassService(IClassRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<Class>> GetClassesAsync()
        {
            return await _repository.GetClassesAsync();
        }
    }
}
