using FluentValidation;

namespace CanviaRetoTecnicoHenryChavez.Command.CustomValidator
{
    public static partial class ExceptionCustomValidator
    {


        public static IRuleBuilderOptionsConditions<T, string> CustomExcepcion_Id_ForInsert<T>(this IRuleBuilder<T, string> ruleBuilder)
        {
            return ruleBuilder
                 .Custom((value, context) =>
                 {
                     if (string.IsNullOrEmpty(value) == false)
                     {
                         context.AddFailure($"Must be null or empty");
                     }
                 });

        }



    }
}
