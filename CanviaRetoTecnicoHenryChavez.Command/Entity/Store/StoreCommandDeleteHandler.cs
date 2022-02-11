using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandDeleteHandler : IRequestHandler<StoreCommandDelete, StoreCommandDelete>
    {
        private readonly IRepositoryService repositoryService;

        public StoreCommandDeleteHandler(IRepositoryService repositoryService)
        {
            this.repositoryService = repositoryService;
        }

        public async Task<StoreCommandDelete> Handle(StoreCommandDelete request, CancellationToken cancellationToken)
        {
            
            await repositoryService.Store_Delete(request.Id, cancellationToken);

            await repositoryService.SaveChanges(cancellationToken);


            return request;

        }
    }
}
