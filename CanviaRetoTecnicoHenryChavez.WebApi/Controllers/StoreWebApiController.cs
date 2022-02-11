using AutoMapper;
using CanviaRetoTecnicoHenryChavez.Command.Entity.Store;
using CanviaRetoTecnicoHenryChavez.Model.Dto;
using CanviaRetoTecnicoHenryChavez.Model.Entity;
using CanviaRetoTecnicoHenryChavez.Model.Interface.Service;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace CanviaRetoTecnicoHenryChavez.WebApi.Controllers
{
    [ApiController]
    [Route("Store")]
    public class StoreWebApiController : Base
    {



        private readonly IRequestService requestService;
        private readonly IMediator mediator;
        private readonly IMapper mapper;

        public StoreWebApiController(IRequestService requestService, IMediator mediator, IMapper mapper)
        {

            this.requestService = requestService;
            this.mediator = mediator;
            this.mapper = mapper;
        }

        [HttpGet(nameof(GetListByCountryId))]
        public async Task<ActionResult> GetListByCountryId(int country_id)
        {
            try
            {
                if (await requestService.Country_ExistsId(country_id) == false)
                {
                    return ReturnBadRequest("Country_Id doest exists");
                }
                else
                {
                    return ReturnOk(await requestService.Store_GetListByCountryId(country_id));
                }
            }
            catch (Exception ex)
            {

                return BadRequest(ex.Message);
            }
        }

        [HttpGet("{id}", Name = nameof(GetById))]
        public async Task<ActionResult> GetById(string id)
        {
            try
            {
                var obj = await requestService.Store_GetById(id);
                if (obj == null)
                {
                    return NotFound();
                }
                else
                {
                    return ReturnOk(  obj  );
                }

            }
            catch (Exception ex)
            {
                return ReturnBadRequest(ex);
            }
        }





        [HttpPost(nameof(InsertNewRecord))]
        public async Task<ActionResult> InsertNewRecord(StoreDtoInsert objDto)
        {
            try
            {


                var obj = mapper.Map<Store>(objDto);

                var cmd = new StoreCommandInsert
                {
                    Store = obj
                };

                var response = await mediator.Send(cmd);

                if (response.TieneErrores == false)
                {
                    return Ok(new { Id = obj.Id });
                }
                else
                {
                    return BadRequest(response);
                }

            }
            catch (Exception ex)
            {
                return ReturnBadRequest(ex);
            }

        }

        [HttpPut(nameof(UpdateRecord))]
        public async Task<ActionResult> UpdateRecord(StoreDtoUpdate objDto)
        {
            try
            {


                var obj = mapper.Map<Store>(objDto);

                var cmd = new StoreCommandUpdate
                {
                    Store = obj
                };

                var response = await mediator.Send(cmd);

                if (response.TieneErrores == false)
                {
                    return Ok();
                }
                else
                {
                    return ReturnBadRequest(response.Errores);
                }

            }
            catch (Exception ex)
            {
                return ReturnBadRequest(ex);
            }

        }


        [HttpDelete(nameof(DeleteRecord))]
        public async Task<ActionResult> DeleteRecord(string id)
        {
            try
            {
                var cmd = new StoreCommandDelete
                {
                    Id = id
                };

                var response = await mediator.Send(cmd);

                if (response.TieneErrores == false)
                {
                    return Ok();
                }
                else
                {
                    return ReturnBadRequest(response.Errores);
                }

            }
            catch (Exception ex)
            {
                return ReturnBadRequest(ex);
            }

        }



    }
}
