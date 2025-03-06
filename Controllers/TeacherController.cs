using BusinessLogic.Interface;
using BusinessLogic.TeacherUseCase;
using CoreEntities.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Runtime.CompilerServices;

namespace StudentTeacherManagementBE.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class TeacherController : ControllerBase
    {
        private readonly ITeacherService _teacherService;
        public TeacherController(ITeacherService teacherService) 
        { 
            this._teacherService = teacherService;
        }
        [HttpGet("get-all-teacher")]
        public IEnumerable<Teacher> GetAllTeacher()
        {
            return this._teacherService.GetAllTeacher();
        }

    
    }
};