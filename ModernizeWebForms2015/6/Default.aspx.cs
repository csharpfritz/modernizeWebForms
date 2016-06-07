using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernizeWebForms2015._6
{
  public partial class Default1 : System.Web.UI.Page
  {

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		// The return type can be changed to IEnumerable, however to support
		// paging and sorting, the following parameters must be added:
		//     int maximumRows
		//     int startRowIndex
		//     out int totalRowCount
		//     string sortByExpression
		[WebMethod()]
		public static IEnumerable<Models.Trip> grid_GetData()
		{
			Models.TripRepository _Repo = new Models.TripRepository();
			return _Repo.Get().ToList();
		}

	}
}