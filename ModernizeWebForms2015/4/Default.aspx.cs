using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernizeWebForms2015._4
{
  public partial class Default : System.Web.UI.Page
  {

    Models.TripRepository _Repo = new Models.TripRepository();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<Models.Trip> Get()
    {
      return _Repo.Get();
    }

    //protected void grid_CallingDataMethods(object sender, CallingDataMethodsEventArgs e)
    //{
    //  e.DataMethodsObject = _Repo;
    //}

  }
}