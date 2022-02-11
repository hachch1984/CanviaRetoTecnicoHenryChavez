using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandInsertHandler : IRequestHandler<StoreCommandInsert, StoreCommandInsert>
    {
        private readonly IRepositoryService repositoryService;

        public StoreCommandInsertHandler(IRepositoryService repositoryService)
        {
            this.repositoryService = repositoryService;
        }

        public async Task<StoreCommandInsert> Handle(StoreCommandInsert request, CancellationToken cancellationToken)
        {
            var obj = request.Store;

            obj.Id=Guid.NewGuid().ToString();

            await repositoryService.Store_Insert(obj, cancellationToken);

            await repositoryService.SaveChanges(cancellationToken);


            return request;

        }
    }
}
