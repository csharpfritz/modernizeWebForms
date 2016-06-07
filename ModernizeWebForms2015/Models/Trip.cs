using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ModernizeWebForms2015.Models
{

	public class Trip
	{

		[Key]
		public int ID { get; set; }

		[Display(Name ="From"), DisplayFormat(ApplyFormatInEditMode =false, DataFormatString ="{0:MMM d, yyyy}" )]
		public DateTime FromDateTime { get; set; }

		[Display(Name = "To"), DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:MMM d, yyyy}")]
		public DateTime ToDateTime { get; set; }

		public string Destination { get; set; }


	}

}