using BusinessLogic.Interface;
using CoreEntities.Models;
using Microsoft.AspNetCore.Cors.Infrastructure;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Runtime.CompilerServices;

namespace StudentTeacherManagementBE.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class StudentScoreController : ControllerBase
    {
        private readonly IScoreService _ScoreService;

        public StudentScoreController(IScoreService studentScoreService)
        {
            _ScoreService = studentScoreService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllScores()
        {
            var scores = await _ScoreService.GetAllScoresAsync();
            return Ok(scores);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateScore(int id, [FromBody] Score studentScore)
        {
            if (id != Score.Id)
            {
                return BadRequest("ID mismatch");
            }

            var existingScore = await _ScoreService.GetScoreByIdAsync(id);
            if (existingScore == null)
            {
                return NotFound();
            }

            await _ScoreService.UpdateScoreAsync(studentScore);
            return NoContent();  // Trả về 204 No Content
        }
    }
}
