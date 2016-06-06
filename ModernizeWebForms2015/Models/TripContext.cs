using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ModernizeWebForms2015.Models
{

	public class TripContext : DbContext
	{

		public TripContext() : base("trips") { }

		public DbSet<Trip> Trips { get; set; }
		

	}

}