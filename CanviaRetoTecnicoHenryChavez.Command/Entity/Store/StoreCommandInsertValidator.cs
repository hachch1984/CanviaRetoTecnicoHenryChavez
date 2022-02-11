using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandInsertValidator : StoreCommandValidator<StoreCommandInsert>
    {
        public StoreCommandInsertValidator(IRequestService requestService):base( CommandType.Insert,requestService)
        {

        }
    }
}
