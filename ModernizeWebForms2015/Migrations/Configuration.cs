namespace ModernizeWebForms2015.Migrations
{
	using System;
	using System.Data.Entity;
	using System.Data.Entity.Migrations;
	using System.Linq;

	internal sealed class Configuration : DbMigrationsConfiguration<ModernizeWebForms2015.Models.TripContext>
	{
		public Configuration()
		{
			AutomaticMigrationsEnabled = false;
		}

		protected override void Seed(ModernizeWebForms2015.Models.TripContext context)
		{
			//  This method will be called after migrating to the latest version.

			//  You can use the DbSet<T>.AddOrUpdate() helper extension method 
			//  to avoid creating duplicate seed data. E.g.
			//
			//    context.People.AddOrUpdate(
			//      p => p.FullName,
			//      new Person { FullName = "Andrew Peters" },
			//      new Person { FullName = "Brice Lambson" },
			//      new Person { FullName = "Rowan Miller" }
			//    );
			//

			context.Trips.AddOrUpdate(
					t => t.ID,
					new Models.Trip { FromDateTime = new DateTime(2016, 6, 6, 10, 0, 0), ToDateTime = new DateTime(2016, 6, 9, 13, 0, 0), Destination = "Seattle" },
					new Models.Trip { FromDateTime = new DateTime(2016, 6, 13, 16, 0, 0), ToDateTime = new DateTime(2016, 6, 14, 17, 30, 0), Destination = "Boston" },
					new Models.Trip { FromDateTime = new DateTime(2016, 8, 12, 10, 0, 0), ToDateTime = new DateTime(2016, 8, 14, 15, 0, 0), Destination = "Jacksonville" },
					new Models.Trip { FromDateTime = new DateTime(2016, 9, 24, 10, 0, 0), ToDateTime = new DateTime(2016, 9, 27, 12, 0, 0), Destination = "Atlanta" },
					new Models.Trip { FromDateTime = new DateTime(2016, 10, 20, 20, 0, 0), ToDateTime = new DateTime(2016, 10, 23, 22, 0, 0), Destination = "Philadelphia" }

				);


		}
	}
}
