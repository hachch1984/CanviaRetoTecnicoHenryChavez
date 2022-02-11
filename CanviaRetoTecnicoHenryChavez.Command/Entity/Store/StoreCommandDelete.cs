using MediatR;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandDelete:StoreCommand,IRequest<StoreCommandDelete>
    {
        public string Id { get; set; }
    }
}
