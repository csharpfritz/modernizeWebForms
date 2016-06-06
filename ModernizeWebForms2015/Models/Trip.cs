using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ModernizeWebForms2015.Models
{

	public class Trip
	{

		[Key]
		public int ID { get; set; }

		public DateTime DepartureDateTime { get; set; }

		public DateTime ArrivalDateTime { get; set; }

		public string Destination { get; set; }


	}

}