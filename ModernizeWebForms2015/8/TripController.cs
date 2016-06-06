using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.OData;

namespace ModernizeWebForms2015._7
{

  [EnableQuery]
  public class TripController : ApiController
  {

		private Models.TripRepository _repo;

		public TripController()
		{
			_repo = new Models.TripRepository();
		}

    // GET api/<controller>
    public IQueryable<Models.Trip> Get()
    {
      return _repo.Get();
    }

    public void Post([FromBody]Models.Trip trip)
    {

			_repo.Update(trip.ID, trip);

    }

    public void Put([FromBody] Models.Trip trip)
    {
      _repo.Add(trip);
    }
    public void Delete([FromBody] Models.Trip trip)
    {
      _repo.Delete(trip.ID);
    }

  }
}