using Microsoft.AspNetCore.Mvc;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PersonLocationsController : ControllerBase
    {

        [HttpGet(Name = "PersonLocations")]
        public IEnumerable<Person> Get()
        {
            return _persons;
        }

        private static Person[] _persons = new Person[]
        {
            new Person()
            {
                PersonCode = 554427,
                PersonRole ="������",
                LastSecurityPointNumber = 20,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:03"
            },

            new Person()
            {
                PersonCode = 361510,
                PersonRole ="���������",
                LastSecurityPointNumber = 19,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:10"
            },

            new Person()
            {
                PersonCode = 648699,
                PersonRole ="���������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:28"
            },

            new Person()
            {
                PersonCode = 212993,
                PersonRole ="������",
                LastSecurityPointNumber = 14,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:25"
            },

            new Person()
            {
                PersonCode = 933282,
                PersonRole ="���������",
                LastSecurityPointNumber = 8,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:39"
            },

            new Person()
            {
                PersonCode = 188659,
                PersonRole ="������",
                LastSecurityPointNumber = 8,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:02"
            },

            new Person()
            {
                PersonCode = 899469,
                PersonRole ="���������",
                LastSecurityPointNumber = 0,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:38"
            },

            new Person()
            {
                PersonCode = 633030,
                PersonRole ="������",
                LastSecurityPointNumber = 12,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:09"
            },

            new Person()
            {
                PersonCode = 359698,
                PersonRole ="���������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:10"
            },

            new Person()
            {
                PersonCode = 662792,
                PersonRole ="������",
                LastSecurityPointNumber = 22,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:19"
            },

            new Person()
            {
                PersonCode = 368642,
                PersonRole ="������",
                LastSecurityPointNumber = 15,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:06"
            },

            new Person()
            {
                PersonCode = 849795,
                PersonRole ="������",
                LastSecurityPointNumber = 20,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:34"
            },

            new Person()
            {
                PersonCode = 773212,
                PersonRole ="������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:14"
            },

            new Person()
            {
                PersonCode = 181189,
                PersonRole ="������",
                LastSecurityPointNumber = 22,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:43"
            },

            new Person()
            {
                PersonCode = 275510,
                PersonRole ="������",
                LastSecurityPointNumber = 7,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:29"
            },

            new Person()
            {
                PersonCode = 565896,
                PersonRole ="������",
                LastSecurityPointNumber = 8,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:31"
            },

            new Person()
            {
                PersonCode = 711859,
                PersonRole ="������",
                LastSecurityPointNumber = 1,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:08"
            },

            new Person()
            {
                PersonCode = 522204,
                PersonRole ="������",
                LastSecurityPointNumber = 17,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:25"
            },

            new Person()
            {
                PersonCode = 118212,
                PersonRole ="���������",
                LastSecurityPointNumber = 1,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:19"
            },

            new Person()
            {
                PersonCode = 598043,
                PersonRole ="���������",
                LastSecurityPointNumber = 17,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:39"
            },

            new Person()
            {
                PersonCode = 687135,
                PersonRole ="���������",
                LastSecurityPointNumber = 3,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:02:57"
            },

            new Person()
            {
                PersonCode = 557847,
                PersonRole ="������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:26"
            },

            new Person()
            {
                PersonCode = 664279,
                PersonRole ="������",
                LastSecurityPointNumber = 18,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:41"
            },

            new Person()
            {
                PersonCode = 962453,
                PersonRole ="���������",
                LastSecurityPointNumber = 18,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:20"
            },

            new Person()
            {
                PersonCode = 965707,
                PersonRole ="���������",
                LastSecurityPointNumber = 17,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:42"
            },

            new Person()
            {
                PersonCode = 986594,
                PersonRole ="���������",
                LastSecurityPointNumber = 0,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:30"
            },

            new Person()
            {
                PersonCode = 906902,
                PersonRole ="���������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:02:54"
            },

            new Person()
            {
                PersonCode = 891969,
                PersonRole ="������",
                LastSecurityPointNumber = 20,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:36"
            },

            new Person()
            {
                PersonCode = 596913,
                PersonRole ="������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:09"
            },

            new Person()
            {
                PersonCode = 804054,
                PersonRole ="���������",
                LastSecurityPointNumber = 3,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:32"
            },

            new Person()
            {
                PersonCode = 513007,
                PersonRole ="���������",
                LastSecurityPointNumber = 17,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:04"
            },

            new Person()
            {
                PersonCode = 959022,
                PersonRole ="������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:17"
            },

            new Person()
            {
                PersonCode = 415188,
                PersonRole ="������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:36"
            },

            new Person()
            {
                PersonCode = 293244,
                PersonRole ="���������",
                LastSecurityPointNumber = 0,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:02:59"
            },

            new Person()
            {
                PersonCode = 500853,
                PersonRole ="������",
                LastSecurityPointNumber = 12,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:24"
            },

            new Person()
            {
                PersonCode = 221239,
                PersonRole ="������",
                LastSecurityPointNumber = 6,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:21"
            },

            new Person()
            {
                PersonCode = 999171,
                PersonRole ="������",
                LastSecurityPointNumber = 19,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:43"
            },

            new Person()
            {
                PersonCode = 233267,
                PersonRole ="���������",
                LastSecurityPointNumber = 1,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:05"
            },

            new Person()
            {
                PersonCode = 936251,
                PersonRole ="���������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:02:53"
            },

            new Person()
            {
                PersonCode = 797088,
                PersonRole ="������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:27"
            },

            new Person()
            {
                PersonCode = 113757,
                PersonRole ="������",
                LastSecurityPointNumber = 2,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:20"
            },

            new Person()
            {
                PersonCode = 167696,
                PersonRole ="���������",
                LastSecurityPointNumber = 0,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:02:53"
            },

            new Person()
            {
                PersonCode = 506780,
                PersonRole ="���������",
                LastSecurityPointNumber = 7,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:11"
            },

            new Person()
            {
                PersonCode = 580809,
                PersonRole ="���������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:14"
            },

            new Person()
            {
                PersonCode = 760905,
                PersonRole ="���������",
                LastSecurityPointNumber = 3,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:01"
            },

            new Person()
            {
                PersonCode = 293026,
                PersonRole ="���������",
                LastSecurityPointNumber = 12,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:21"
            },

            new Person()
            {
                PersonCode = 259078,
                PersonRole ="���������",
                LastSecurityPointNumber = 14,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:38"
            },

            new Person()
            {
                PersonCode = 544634,
                PersonRole ="������",
                LastSecurityPointNumber = 5,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:19"
            },

            new Person()
            {
                PersonCode = 890356,
                PersonRole ="������",
                LastSecurityPointNumber = 10,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:11"
            },

            new Person()
            {
                PersonCode = 509635,
                PersonRole ="������",
                LastSecurityPointNumber = 19,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:12"
            },

            new Person()
            {
                PersonCode = 239369,
                PersonRole ="���������",
                LastSecurityPointNumber = 0,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:38"
            },

            new Person()
            {
                PersonCode = 598323,
                PersonRole ="���������",
                LastSecurityPointNumber = 4,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:31"
            },

            new Person()
            {
                PersonCode = 474294,
                PersonRole ="���������",
                LastSecurityPointNumber = 13,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:04"
            },

            new Person()
            {
                PersonCode = 958333,
                PersonRole ="������",
                LastSecurityPointNumber = 18,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:08"
            },

            new Person()
            {
                PersonCode = 860865,
                PersonRole ="���������",
                LastSecurityPointNumber = 8,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:43"
            },

            new Person()
            {
                PersonCode = 282540,
                PersonRole ="���������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:03"
            },

            new Person()
            {
                PersonCode = 699657,
                PersonRole ="���������",
                LastSecurityPointNumber = 22,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:15"
            },

            new Person()
            {
                PersonCode = 443304,
                PersonRole ="������",
                LastSecurityPointNumber = 5,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:02"
            },

            new Person()
            {
                PersonCode = 318606,
                PersonRole ="������",
                LastSecurityPointNumber = 5,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:33"
            },

            new Person()
            {
                PersonCode = 335537,
                PersonRole ="���������",
                LastSecurityPointNumber = 7,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:35"
            },

            new Person()
            {
                PersonCode = 148413,
                PersonRole ="���������",
                LastSecurityPointNumber = 4,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:25"
            },

            new Person()
            {
                PersonCode = 567270,
                PersonRole ="������",
                LastSecurityPointNumber = 22,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:15"
            },

            new Person()
            {
                PersonCode = 519395,
                PersonRole ="���������",
                LastSecurityPointNumber = 4,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:33"
            },

            new Person()
            {
                PersonCode = 277833,
                PersonRole ="���������",
                LastSecurityPointNumber = 12,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:02:57"
            },

            new Person()
            {
                PersonCode = 798174,
                PersonRole ="���������",
                LastSecurityPointNumber = 2,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:02:58"
            },

            new Person()
            {
                PersonCode = 951421,
                PersonRole ="���������",
                LastSecurityPointNumber = 14,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:42"
            },

            new Person()
            {
                PersonCode = 435383,
                PersonRole ="���������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:02:58"
            },

            new Person()
            {
                PersonCode = 689399,
                PersonRole ="���������",
                LastSecurityPointNumber = 13,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:13"
            },

            new Person()
            {
                PersonCode = 223472,
                PersonRole ="������",
                LastSecurityPointNumber = 14,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:14"
            },

            new Person()
            {
                PersonCode = 807294,
                PersonRole ="������",
                LastSecurityPointNumber = 13,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:30"
            },

            new Person()
            {
                PersonCode = 832945,
                PersonRole ="������",
                LastSecurityPointNumber = 21,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:25"
            },

            new Person()
            {
                PersonCode = 169661,
                PersonRole ="���������",
                LastSecurityPointNumber = 13,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:02:53"
            },

            new Person()
            {
                PersonCode = 354054,
                PersonRole ="������",
                LastSecurityPointNumber = 1,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:03:30"
            },

            new Person()
            {
                PersonCode = 479648,
                PersonRole ="���������",
                LastSecurityPointNumber = 10,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:05"
            },

            new Person()
            {
                PersonCode = 176774,
                PersonRole ="���������",
                LastSecurityPointNumber = 15,
                LastSecurityPointDirection= "in",
                LastSecurityPointTime = "2024-03-19 13:02:58"
            },

            new Person()
            {
                PersonCode = 451175,
                PersonRole ="������",
                LastSecurityPointNumber = 20,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:28"
            },

            new Person()
            {
                PersonCode = 163484,
                PersonRole ="������",
                LastSecurityPointNumber = 11,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:10"
            },

            new Person()
            {
                PersonCode = 821742,
                PersonRole ="���������",
                LastSecurityPointNumber = 3,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:09"
            },

            new Person()
            {
                PersonCode = 557724,
                PersonRole ="������",
                LastSecurityPointNumber = 17,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:03:31"
            },

            new Person()
            {
                PersonCode = 429233,
                PersonRole ="���������",
                LastSecurityPointNumber = 9,
                LastSecurityPointDirection= "out",
                LastSecurityPointTime = "2024-03-19 13:02:56"
            }
        };
    }
}
