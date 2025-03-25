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
    public class QuizRepository : IQuizRepository
    {
        private readonly CustomDBContext _dbContext;

        public QuizRepository(CustomDBContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<List<Quiz>> GetQuizzesAsync()
        {
            return await _dbContext.Quizzes.ToListAsync();
        }

        public async Task<List<Quiz>> SearchQuizzesAsync(string title)
        {
            return await _dbContext.Quizzes
                .Where(q => q.Title.Contains(title))
                .ToListAsync();
        }

        public async Task<Quiz> AddQuizAsync(Quiz quiz)
        {
            quiz.ID = Guid.NewGuid(); // Tạo ID mới cho quiz
            _dbContext.Quizzes.Add(quiz);
            await _dbContext.SaveChangesAsync();
            return quiz;
        }

        public async Task<bool> DeleteQuizAsync(Guid id)
        {
            var quiz = await _dbContext.Quizzes.FindAsync(id);
            if (quiz == null)
            {
                return false; // Không tìm thấy quiz
            }

            _dbContext.Quizzes.Remove(quiz);
            await _dbContext.SaveChangesAsync();
            return true; // Xóa thành công
        }

        public async Task<Quiz> GetQuizByIdAsync(Guid quizId)
        {
            return await _dbContext.Quizzes.FindAsync(quizId);
        }

        public async Task<List<Quiz>> GetAllQuizzesAsync()
        {
            return await _dbContext.Quizzes.ToListAsync();
        }


    }
}
