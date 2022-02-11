using CanviaRetoTecnicoHenryChavez.Command.CustomValidator;
using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using FluentValidation;
using MediatR;

namespace CanviaRetoTecnicoHenryChavez.Command.Entity.Store
{
    public class StoreCommandValidator<T> : AbstractValidator<T> where T : StoreCommand, IRequest<T>
    {

        public StoreCommandValidator(CommandType commandType, IRequestService requestService)
        {
            RuleFor(x => x.Store).CustomExcepcion_CommandPropertyCannotBeNull();

            switch (commandType)
            {
                case CommandType.Insert:

                    RuleFor(x => x.Store.Id).CustomExcepcion_Id_ForInsert();

                    break;

                case CommandType.Update:

                    RuleFor(x => x.Store.Id).CustomAsync(async (value, context, cancellationToken) =>
                    {
                        if (value == null || value.Trim() == "")
                        {
                            context.AddFailure("Required");
                        }
                        else if ( await requestService.Store_ExistsId (value,  cancellationToken) ==false)
                        {
                            context.AddFailure("The value does not exists");
                        }
                    });



                    break;
            }



            RuleFor(x => x.Store.Name).CustomAsync(async (value, context, cancellationToken) =>
            {
                if (value == null || value.Trim() == "")
                {
                    context.AddFailure("Required");
                }
                else if (
                context.InstanceToValidate.Store.Country_Id.HasValue &&
                context.InstanceToValidate.Store.Country_Id.Value>0 &&
                await requestService.Country_ExistsId(context.InstanceToValidate.Store.Country_Id.Value, cancellationToken) == true &&
                await requestService.Store_ExistsName(context.InstanceToValidate.Store.Country_Id.Value, value, cancellationToken) == true)
                {
                    context.AddFailure("The Name already exists");
                }

            });



            RuleFor(x => x.Store.Country_Id).CustomAsync(async (value, context, cancellationToken) =>
            {
                if (value.HasValue == false || value.Value <= 0)
                {
                    context.AddFailure("Required");
                }
                else if (await requestService.Country_ExistsId(value.Value, cancellationToken) == false)
                {
                    context.AddFailure("The Country_Id doesnot exists");
                }

            });

        }


    


    }
}
