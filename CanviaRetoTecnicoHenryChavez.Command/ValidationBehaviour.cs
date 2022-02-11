using FluentValidation;
using MediatR;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.Command
{
    /// <summary>
    /// A helper class used to handle validations for all commands that enter the 
    /// MediatR Pipeline.
    /// If fires the Fluent Validations for the command and reports any errors
    /// in the Errors field of the Response.
    /// It uses the MediatR Pipeline support.
    /// </summary>
    /// <typeparam name="TRequest">The command to validate</typeparam>
    /// <typeparam name="TResponse">The response with the errors, if any</typeparam>
    public class ValidationBehaviour<TRequest, TResponse> : IPipelineBehavior<TRequest, TResponse>
        where TRequest : IRequest<TResponse> where TResponse : BaseCommand
    {
        private readonly IEnumerable<IValidator<TRequest>> _validators;
        public ValidationBehaviour(IEnumerable<IValidator<TRequest>> validators)
        {
            _validators = validators;
        }
        public async Task<TResponse> Handle(TRequest request, CancellationToken cancellationToken, RequestHandlerDelegate<TResponse> next)
        {

            var failures = _validators
                .Select(v => v.Validate(request))
                .SelectMany(result => result.Errors)
                .Where(f => f != null)
                .ToList();

            if (failures.Any())
            {
                var cmd = request as BaseCommand;
                foreach (var failure in failures)
                {
                    if (!cmd.Errores.ContainsKey(failure.PropertyName))
                    {
                        cmd.Errores.Add(failure.PropertyName, failure.ErrorMessage);
                    }
                }

                return cmd as TResponse;
            }

            return await next();

        }
    }
}
