using CanviaRetoTecnicoHenryChavez.Model.Entity;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.Model.Interface.Service
{
    public interface IRequestService
    {
        #region Country

        Task<List<Country>> Country_GetAll(CancellationToken cancellationToken = default);

        Task<bool> Country_ExistsId(int id, CancellationToken cancellationToken = default);

        Task<Country> Country_GetById(int id, CancellationToken cancellationToken = default);


        #endregion


        #region Store

        Task<bool> Store_ExistsId(string id, CancellationToken cancellationToken = default);

        Task<bool> Store_ExistsName(int country_id, string name, CancellationToken cancellationToken = default);
         
        Task<Store> Store_GetById(string id, CancellationToken cancellationToken = default);
         
        Task<List<Store>> Store_GetListByCountryId(int country_id, CancellationToken cancellationToken = default);

        Task<List<Store>> Store_GetAll(CancellationToken cancellationToken = default);
       

        #endregion



    }
}
