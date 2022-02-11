using CanviaRetoTecnicoHenryChavez.DbContext;
using CanviaRetoTecnicoHenryChavez.Model.Entity;
using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using Microsoft.EntityFrameworkCore;

namespace CanviaRetoTecnicoHenryChavez.RequestDataFromDb
{
    public class RepositoryService : IRepositoryService
    {
        private readonly ApplicationDbContext context;

        public RepositoryService(ApplicationDbContext context)
        {
            this.context = context;
        }


        public async Task SaveChanges(CancellationToken cancellationToken)
        {
            await context.SaveChangesAsync(cancellationToken);
        }



        public async Task Store_Insert(Store obj, CancellationToken cancellationToken)
        { context.Entry(obj).State = EntityState.Modified;
            await context.Store.AddAsync(obj, cancellationToken);

           
        }

        public async Task Store_Update(Store obj, CancellationToken cancellationToken)
        {
            var fromDb = await context.Store.FirstAsync(x => x.Id == obj.Id, cancellationToken);

            context.Entry(fromDb).CurrentValues.SetValues(obj);
        }

        public async Task Store_Delete(string id, CancellationToken cancellationToken)
        {
            var fromDb = await context.Store.FirstAsync(x => x.Id == id, cancellationToken);

            context.Store.Remove(fromDb);
        }


    }
}
