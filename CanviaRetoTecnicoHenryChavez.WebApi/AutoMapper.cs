using AutoMapper;
using CanviaRetoTecnicoHenryChavez.Model.Dto;
using CanviaRetoTecnicoHenryChavez.Model.Entity;

namespace CanviaRetoTecnicoHenryChavez.WebApi
{
    public class AutoMapper : Profile
    {
        public AutoMapper()
        {
            CreateMap<StoreDtoInsert, Store>();
            CreateMap<StoreDtoUpdate, Store>();
        }
    }
}
