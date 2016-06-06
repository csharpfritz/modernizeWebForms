using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernizeWebForms2015._5
{
  public partial class Default : System.Web.UI.Page
  {

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod()]
    public static IEnumerable<Models.Trip> Get()
    {
      var repo = new Models.TripRepository();
      return repo.Get();
    }

  }
}