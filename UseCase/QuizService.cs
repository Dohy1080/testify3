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
    }
}
