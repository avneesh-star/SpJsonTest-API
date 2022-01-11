using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SpJsonTest.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text.Json;

namespace SpJsonTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly TestdbContext _context;

        public StudentController(TestdbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll() 
        {
            var data = await _context.Procedures.sp_get_studentAsync();
            var vales = JsonSerializer.Deserialize<Dictionary<string, object>>(data.FirstOrDefault().jsondata);
            return Ok(vales);
        }
    }
}
