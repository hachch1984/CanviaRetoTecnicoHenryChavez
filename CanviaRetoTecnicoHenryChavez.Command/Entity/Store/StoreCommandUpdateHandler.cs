using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandUpdateHandler : IRequestHandler<StoreCommandUpdate, StoreCommandUpdate>
    {
        private readonly IRepositoryService repositoryService;

        public StoreCommandUpdateHandler(IRepositoryService repositoryService)
        {
            this.repositoryService = repositoryService;
        }

        public async Task<StoreCommandUpdate> Handle(StoreCommandUpdate request, CancellationToken cancellationToken)
        {
            var obj = request.Store;

          
            await repositoryService.Store_Update(obj, cancellationToken);

            await repositoryService.SaveChanges(cancellationToken);


            return request;

        }
    }
}
