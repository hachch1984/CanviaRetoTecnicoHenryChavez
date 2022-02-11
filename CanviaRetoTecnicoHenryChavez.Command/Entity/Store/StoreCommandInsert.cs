using MediatR;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandInsert:StoreCommand,IRequest<StoreCommandInsert>
    {
    }
}
