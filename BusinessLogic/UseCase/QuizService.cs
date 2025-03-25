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
    public class QuizService : IQuizService
    {
        private IQuizRepository _quizRepository;
        public QuizService(IQuizRepository quizRepository)
        {
            this._quizRepository = quizRepository;
        }

        public async Task<List<Quiz>> GetQuizzesAsync()
        {
            return await _quizRepository.GetQuizzesAsync();
        }

       

        public async Task<List<Quiz>> SearchQuizzesAsync(string title)
        {
            return await _quizRepository.SearchQuizzesAsync(title);
        }

        public async Task<Quiz> AddQuizAsync(Quiz quiz)
        {
            return await _quizRepository.AddQuizAsync(quiz);
        }


        public async Task<bool> DeleteQuizAsync(Guid id)
        {
            return await _quizRepository.DeleteQuizAsync(id);
        }

        public async Task<QuizResult> SubmitQuizAsync(SubmitQuiz submitQuizDto)
        {
            var quiz = await _quizRepository.GetQuizByIdAsync(submitQuizDto.QuizID);
            if (quiz == null)
            {
                throw new Exception("Quiz not found");
            }

            // Logic chấm bài (giả định có một phương thức tính điểm)
            int score = CalculateScore(submitQuizDto.Answers);

            // Lưu kết quả
            var result = new QuizResult
            {
                QuizID = submitQuizDto.QuizID,
                StudentID = submitQuizDto.StudentID,
                Score = score,
                Status = "Completed"
            };

            return result;
        }

        private int CalculateScore(List<Answer> answers)
        {
            // Logic tính điểm (giả định)
            return answers.Count; // Ví dụ: tính dựa trên số lượng câu trả lời đúng
        }

        public async Task<Quiz> CreateQuizAsync(CreateQuiz createQuizDto)
        {
            var quiz = new Quiz
            {
                Title = createQuizDto.Title,
                ExpiryDate = createQuizDto.ExpiryDate,
                Duration = createQuizDto.Duration,
                Questions = new List<Question>(createQuizDto.QuestionCount) // Tạo danh sách câu hỏi
            };

            return await _quizRepository.AddQuizAsync(quiz);
        }

    }
}
