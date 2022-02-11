using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.WebApi.Controllers
{
    [ApiController]
    [Route("CountryWebApi")]
    public class CountryWebApiController : Base
    {
        private readonly IRequestService requestService;

        public CountryWebApiController(IRequestService requestService)
        {
            this.requestService = requestService;
        }



        [HttpGet(nameof(GetAll))]
        public async Task<ActionResult> GetAll()
        {
            try
            {
                return ReturnOk(await requestService.Country_GetAll());
            }
            catch (Exception ex)
            {

                return BadRequest(ex.Message);
            } 
        }


        [HttpGet(nameof(GetById))]
        public async Task<ActionResult> GetById(int id)
        {
            try
            {
                if (id <= 0)
                {
                    return ReturnBadRequest("The id cannot be lest or equal to zero");
                }


                var obj = await requestService.Country_GetById(id);
                if (obj == null)
                {
                    return NotFound();
                }
                else
                {
                    return ReturnOk(obj);
                }
            }
            catch (Exception ex)
            {

                return ReturnBadRequest(ex);
            }
        }


    }
}
