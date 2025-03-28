﻿using BusinessLogic.Repository;
using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Interface
{
    public interface ITeacherService
    {
        public List<Teacher> GetAllTeacher();
        Task DeleteTeacher(Guid id);
        Task<Teacher> GetTeacherById(Guid id);
        Task AddTeacher(Teacher teacher);
        
    }

    
}
