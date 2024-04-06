using Microsoft.AspNetCore.Mvc;

namespace MyWeb.Controllers

{
    [ApiController]
    [Route("[controller]")]
    public class MyController : ControllerBase
    {
        [HttpGet(Name = "GetMyController")]
   
        public string SayHello(string name)
        {
            return $"Hello {name}";
        }

    }
}

