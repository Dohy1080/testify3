using BusinessLogic.Interface;
using BusinessLogic.Repository;
using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.UseCase
{


    public class TeacherService : ITeacherService
    {
        private ITeacherRepository _teacherRepository;
        public TeacherService(ITeacherRepository teacherRepository)
        {
            this._teacherRepository = teacherRepository;
        }

        public List<Teacher> GetAllTeacher()
        {
            return _teacherRepository.GetAllTeachers();
        }

    }
}
