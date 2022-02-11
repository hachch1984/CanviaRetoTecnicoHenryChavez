using CanviaRetoTecnicoHenryChavez.Model.Entity;
using System.Threading;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.Model.Interface.Service
{
    public interface IRepositoryService
    {
        Task SaveChanges(CancellationToken cancellationToken);

        Task Store_Insert(Store obj, CancellationToken cancellationToken);

        Task Store_Update(Store obj, CancellationToken cancellationToken);

        Task Store_Delete(string id, CancellationToken cancellationToken);
       
    }
}
