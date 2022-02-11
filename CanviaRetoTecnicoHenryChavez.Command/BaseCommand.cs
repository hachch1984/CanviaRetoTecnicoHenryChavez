using System.Collections.Generic;

namespace CanviaRetoTecnicoHenryChavez.Command
{
    public abstract class BaseCommand
    {
        public Dictionary<string, string> Errores { get; set; } = new Dictionary<string, string>();
        public bool TieneErrores => (Errores?.Count ?? 0) > 0;
    }
}
