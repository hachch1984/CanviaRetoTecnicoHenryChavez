using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandUpdateValidator : StoreCommandValidator<StoreCommandUpdate>
    {
        public StoreCommandUpdateValidator(IRequestService requestService):base( CommandType.Update,requestService)
        {

        }
    }
}
