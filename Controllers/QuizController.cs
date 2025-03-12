using BusinessLogic.Interface;
using CoreEntities.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace StudentTeacherManagementBE.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QuizController : ControllerBase
    {
        private readonly IQuizService _quizService;

        public QuizController(IQuizService quizService)
        {
            _quizService = quizService;
        }

        [HttpGet]
        public async Task<IActionResult> GetQuizzes()
        {
            var quizzes = await _quizService.GetQuizzesAsync();
            return Ok(quizzes);
        }

        [HttpGet("search")]
        public async Task<IActionResult> SearchQuizzes([FromQuery] string title)
        {
            var quizzes = await _quizService.SearchQuizzesAsync(title);
            return Ok(quizzes);
        }

        [HttpPost]
        public async Task<IActionResult> AddQuiz([FromBody] Quiz quiz)
        {
            if (quiz == null)
            {
                return BadRequest("Quiz cannot be null");
            }

            var createdQuiz = await _quizService.AddQuizAsync(quiz);
            return CreatedAtAction(nameof(GetQuizzes), new { id = createdQuiz.Id }, createdQuiz);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteQuiz(Guid id)
        {
            var result = await _quizService.DeleteQuizAsync(id);
            if (!result)
            {
                return NotFound(); // Không tìm thấy quiz
            }
            return NoContent(); // Xóa thành công
        }
    }
}
