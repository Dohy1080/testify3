using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Repository
{
    public interface IQuizRepository
    {
        Task<List<Quiz>> GetQuizzesAsync();
       
        Task<List<Quiz>> SearchQuizzesAsync(string title);
        Task<Quiz> AddQuizAsync(Quiz quiz);
        Task<bool> DeleteQuizAsync(Guid id);
        Task<Quiz> GetQuizByIdAsync(Guid quizId);
        Task<List<Quiz>> GetAllQuizzesAsync();

    }



}
