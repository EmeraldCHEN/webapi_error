using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using api.Models;
using Microsoft.EntityFrameworkCore;

namespace api.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class GameScheduleController : ControllerBase
    {
        //  Instantiate the model context that matches the controller
        // context does all the heavy lifting because of using the entity framework
        private readonly Rugby7Context _context;

        public GameScheduleController(Rugby7Context context)
        {
            _context = context;
        }
        
        [HttpGet]
        public async Task<ActionResult<IEnumerable<GameSchedule>>> GetGameSchedule()
        {
            var x = await _context.GameSchedule.ToListAsync();
            return x; // Return the context with the model class and convert it to a list
        }


        [HttpGet("{id}")]

        public async Task<ActionResult<GameSchedule>> GetGameScheduleItem(long id)
        {
            GameSchedule item = await _context.GameSchedule.FindAsync(id); // Check if the id is in the database

            if (item == null)
            {
                return NotFound();
            }
            return item; // If the id exists then return that object which is a single instance
        }


        [HttpPost]
        
        public async Task<ActionResult<GameSchedule>> PostGameSchedule(GameSchedule item)
        {
            _context.GameSchedule.Add(item); // Add a single object to the database

            await _context.SaveChangesAsync(); //  Save the added object to the database

            return CreatedAtAction(nameof(GetGameSchedule), item); // Return the object details to the api user
        }



        [HttpPut("{id}")]

        public async Task<IActionResult> PutGameScheduleItem (string Id, GameSchedule item)
        {
            if (Id != item.Id) // Check if the id argument exists in the database
            {
                return BadRequest(); // Cancel the request if it doesn't
            }

            _context.Entry(item).State = EntityState.Modified; // If so, EntitySate uses the Modified property to flag any changes
            
            await _context.SaveChangesAsync(); // Update & save the data

            return Content("MODEL has been updated!");

        }
       
        [HttpDelete("{id}")]
       
        public async Task<IActionResult> DeleteGameScheduleItem(short id)
        {
            GameSchedule model = await _context.GameSchedule.FindAsync(id);

            if (model == null)
            {
                return NotFound();
            }

            _context.GameSchedule.Remove(model); // Remove the record if it is found

            await _context.SaveChangesAsync();

            return Content("Model has been removed ~");
        }
    }
}
