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
    public class QuestionService : IQuestionService
    {
        private readonly IQuestionRepository _repository;

        public QuestionService(IQuestionRepository repository)
        {
            _repository = repository;
        }

        public Task<List<Question>> GetAllQuestionsAsync() => _repository.GetAllQuestionsAsync();
        public Task<Question> GetQuestionByIdAsync(Guid id) => _repository.GetQuestionByIdAsync(id);
        public Task<Question> AddQuestionAsync(Question question) => _repository.AddQuestionAsync(question);
        public Task<Question> UpdateQuestionAsync(Question question) => _repository.UpdateQuestionAsync(question);
        public Task<bool> DeleteQuestionAsync(Guid id) => _repository.DeleteQuestionAsync(id);
    }
}
