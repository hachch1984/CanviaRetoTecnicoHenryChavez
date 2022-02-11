using FluentValidation;

namespace CanviaRetoTecnicoHenryChavez.Command.CustomValidator
{
    public static partial class ExceptionCustomValidator
    {
        public static IRuleBuilderOptionsConditions<T, object> CustomExcepcion_CommandPropertyCannotBeNull<T>(this IRuleBuilder<T, object> ruleBuilder)
        {
            return ruleBuilder
              .Custom((value, context) =>
              {
                  if (value == null)
                  {
                     context.AddFailure($"Command property cannot be null");
                  }
              });
        }
    }
}
