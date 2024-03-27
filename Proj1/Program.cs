

var builder = WebApplication.CreateBuilder(args);


// Add services to the container.
var env = builder.Environment.EnvironmentName;
IConfiguration configuration = new ConfigurationBuilder().AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .AddJsonFile($"appsettings.{env}.json", optional: true)
                .Build();
var connections = configuration.GetSection("Connections").Get<Proj1.Connections>();
builder.Services.AddSingleton(connections);
//                                .AddEnvironmentVariables().Build();
//builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
//                .AddJsonFile($"appsettings.{env}.json", optional: true);
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();
// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
//{
//    app.UseSwagger();
//    app.UseSwaggerUI();
//}

var con = app.Configuration.GetRequiredSection("Connections");

app.UseSwagger();
app.UseSwaggerUI();
app.UseHttpsRedirection();


app.UseAuthorization();

app.MapControllers();

app.Run();
