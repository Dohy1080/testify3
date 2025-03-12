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

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTeacher(Guid id)
        {
            try
            {
                await _teacherService.DeleteTeacher(id);
                return NoContent(); // Trả về 204 No Content
            }
            catch (KeyNotFoundException)
            {
                return NotFound("Teacher not found.");
            }
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetTeacherById(Guid id)
        {
            var teacher = await _teacherService.GetTeacherById(id);
            if (teacher == null)
            {
                return NotFound("Teacher not found.");
            }

            return Ok(teacher);
        }

        [HttpPost("add")]
        public async Task<IActionResult> AddTeacher([FromBody] Teacher teacherDto)
        {
            if (teacherDto == null)
            {
                return BadRequest("Teacher data is null.");
            }

            await _teacherService.AddTeacher(teacherDto);
            return CreatedAtAction(nameof(AddTeacher), new { name = teacherDto.Name }, teacherDto);
        }



    }
};