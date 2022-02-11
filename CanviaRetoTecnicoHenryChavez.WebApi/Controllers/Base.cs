using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace CanviaRetoTecnicoHenryChavez.WebApi.Controllers
{
    public abstract  class Base: ControllerBase
    {
        protected ActionResult ReturnBadRequest(Exception ex)
        {
            return BadRequest(new { ErrorException = ex.Message });
        }
        protected ActionResult ReturnBadRequest(string value)
        {
            return BadRequest(new { ErrorException = value });
        }
        protected ActionResult ReturnBadRequest(Dictionary<string, string> value)
        {
            return BadRequest(new { ErrorValidation = value });
        }


        protected ActionResult ReturnOk(object value)
        {
            return Ok(new { Data = value});
        }
    }
}
