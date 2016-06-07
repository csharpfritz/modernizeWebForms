using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ModernizeWebForms2015._7
{
	public class TripController : ApiController
	{

		private Models.TripRepository _Repo;

		public TripController()
		{
			_Repo = new Models.TripRepository();
		}

		// GET api/<controller>
		public IEnumerable<Models.Trip> Get()
		{
			return _Repo.Get();
		}


		// GET api/<controller>/5
		public Models.Trip Get(int id)
		{
			return _Repo.Get().FirstOrDefault(t => t.ID == id);
		}

		// POST api/<controller>
		public void Post([FromBody]Models.Trip value)
		{

			_Repo.Add(value);

		}

		// PUT api/<controller>/5
		public void Put(int id, [FromBody]Models.Trip value)
		{

			_Repo.Update(id, value);

		}
	}
}