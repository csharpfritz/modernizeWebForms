using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernizeWebForms2015._2_Master
{
  public partial class Default : System.Web.UI.Page
  {

    Models.TripRepository _Repo = new Models.TripRepository();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

		// The return type can be changed to IEnumerable, however to support
		// paging and sorting, the following parameters must be added:
		//     int maximumRows
		//     int startRowIndex
		//     out int totalRowCount
		//     string sortByExpression
		public IQueryable<Models.Trip> grid_GetData()
		{
			return _Repo.Get();
		}

		/**
				public void grid_CallingDataMethods(object sender, CallingDataMethodsEventArgs e)
				{

					e.DataMethodsObject = _Repo;
				
				}

		**/

	}
}
 