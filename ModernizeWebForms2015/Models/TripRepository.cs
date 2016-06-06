using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ModernizeWebForms2015.Models
{

  public class TripRepository : IDisposable
  {

		private TripContext _Context;


    public TripRepository()
    {

			this._Context = new TripContext();

    }

    #region Cleanup Methods

    ~TripRepository()
    {
      Dispose(false);
    }

    /// <summary>
    /// Performs application-defined tasks associated with freeing, releasing,
    /// or resetting unmanaged resources.
    /// </summary>
    public void Dispose()
    {
      Dispose(true);
    }
    protected virtual void Dispose(bool isDisposing)
    {

			if (isDisposing) GC.SuppressFinalize(this);

			_Context.Dispose();

		}

    #endregion

    public IQueryable<Trip> Get()
    {

      return _Context.Trips;

    }

    /// <summary>
    /// Adds the specified value.
    /// </summary>
    /// <param name="value">The value.</param>
    public void Add(Trip value)
    {
      _Context.Trips.Add(value);
      _Context.SaveChanges();
    }


    public void Update(int id, Trip value)
    {

      _Context.Trips.Attach(value);
      _Context.SaveChanges();

    }

    public void Delete(int id)
    {
      _Context.Trips.Remove(_Context.Trips.First(t => t.ID == id));
      _Context.SaveChanges();
    }
  }

}