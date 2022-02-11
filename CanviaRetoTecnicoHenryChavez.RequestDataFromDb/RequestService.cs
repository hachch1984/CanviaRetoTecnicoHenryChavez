using CanviaRetoTecnicoHenryChavez.DbContext;
using CanviaRetoTecnicoHenryChavez.Model.Entity;
using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using Microsoft.EntityFrameworkCore;

namespace CanviaRetoTecnicoHenryChavez.RequestDataFromDb
{
    public class RequestService:IRequestService
    {
        private readonly ApplicationDbContext _context;

        public RequestService(ApplicationDbContext context)
        {
            this._context = context;
        }

        #region Country

        public async Task<List<Country>> Country_GetAll(CancellationToken cancellationToken=default)
        { 
            return await _context.Country.AsNoTracking().OrderBy(x => x.Name).ToListAsync(cancellationToken);
        }

        public async Task<bool> Country_ExistsId(int id, CancellationToken cancellationToken = default)
        {
            return await _context.Country.AnyAsync(x => x.Id == id,cancellationToken);
        }

        public async Task<Country?> Country_GetById(int id,CancellationToken cancellationToken = default)
        {
            return await _context.Country.AsNoTracking().FirstOrDefaultAsync(x => x.Id == id, cancellationToken);
        }


        #endregion


        #region Store

        public async Task<bool> Store_ExistsId(string id, CancellationToken cancellationToken = default)
        {
            return await _context
                .Store.AnyAsync(x => x.Id == id, cancellationToken);
        }
        public async Task<bool> Store_ExistsName(int country_id, string name,   CancellationToken cancellationToken = default)
        {
            return await _context
                .Store.AnyAsync(x => x.Country_Id== country_id && EF.Functions.Collate(x.Name, "SQL_Latin1_General_CP1_CS_AS")== name,cancellationToken);
        }

        public async Task<Store?> Store_GetById(string id, CancellationToken cancellationToken = default)
        {
            return await _context
                .Store.AsNoTracking()
                .Include(x => x.Country).AsNoTracking()
                .FirstOrDefaultAsync(x => x.Id.Equals(id),  cancellationToken);
        }

        public async Task<List<  Store>> Store_GetListByCountryId(int country_id, CancellationToken cancellationToken = default)
        {
            return await _context
                .Store.AsNoTracking()
                .Include(x => x.Country).AsNoTracking()
                .Where(x=>x.Country_Id==country_id)
                .OrderBy(x=>x.Name)
                .ToListAsync( cancellationToken);
        }

        public async Task<List<Store>> Store_GetAll(CancellationToken cancellationToken = default)
        {
            return await _context
                .Store.AsNoTracking()
                .Include(x => x.Country).AsNoTracking()
                .OrderBy(x=>x.Country.Name)
                .ThenBy(x => x.Name)
                .ToListAsync(cancellationToken);
        }

        #endregion



    }
}