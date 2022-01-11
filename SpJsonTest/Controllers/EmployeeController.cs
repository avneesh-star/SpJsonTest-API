using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SpJsonTest.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace SpJsonTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly TestdbContext _context;

        public EmployeeController(TestdbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var data = await _context.Procedures.sp_get_employeeAsync();
            var vales = JsonSerializer.Deserialize<Dictionary<string, object>>(data.FirstOrDefault().jsondata);
            return Ok(vales);
        }
    }
}
