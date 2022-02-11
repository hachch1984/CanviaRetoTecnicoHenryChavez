using CanviaRetoTecnicoHenryChavez.Command;
using CanviaRetoTecnicoHenryChavez.DbContext;
using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using CanviaRetoTecnicoHenryChavez.RequestDataFromDb;
using FluentValidation;
using MediatR;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;

namespace CanviaRetoTecnicoHenryChavez.WebApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

       


        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "CanviaRetoTecnicoHenryChavez.WebApi", Version = "v1" });
            });



            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(Configuration.GetConnectionString("BdHenryChavez")));



            services.AddAutoMapper(typeof(Startup));



            services.AddScoped<IRequestService, RequestService>();

            services.AddScoped<IRepositoryService, RepositoryService>();

           // services.AddMvc().AddFluentValidation();

            services.AddValidatorsFromAssembly(typeof(BaseCommand).Assembly);
            services.AddScoped(typeof(IPipelineBehavior<,>), typeof(ValidationBehaviour<,>));

            services.AddMediatR(typeof(BaseCommand));
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "CanviaRetoTecnicoHenryChavez.WebApi v1"));
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
