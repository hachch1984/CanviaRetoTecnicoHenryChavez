using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using FluentValidation;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandDeleteValidator : AbstractValidator<StoreCommandDelete>
    {
        public StoreCommandDeleteValidator(IRequestService requestService)
        {
            RuleFor(x => x.Id).CustomAsync(async (value, context, cancellationToken) =>
            {
                if (value == null || value.Trim() == "")
                {
                    context.AddFailure("Required");
                }
                else if (await requestService.Store_ExistsId(value, cancellationToken) == false)
                {
                    context.AddFailure("The value does not exists");
                }
            });


        }

    }
}

