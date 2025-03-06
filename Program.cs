using BusinessLogic.Interface;
using BusinessLogic.Repository;
using BusinessLogic.TeacherUseCase;
using Microsoft.EntityFrameworkCore;
using SqlServerPlugin;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<ITeacherRepository, TeacherRepository>();

builder.Services.AddScoped<IStudentRepository, StudentRepository>();
builder.Services.AddScoped<IStudentService, BusinessLogic.Interface.StudentService>();


builder.Services.AddDbContext<CustomDBContext>(options => options.UseSqlServer(
    builder.Configuration.GetConnectionString("MyConnection")
    ));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
