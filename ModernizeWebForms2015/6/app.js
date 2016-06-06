var convertFuncs = {
  Id: function (val) { return parseInt(val, 10); },
  Name: function (val) { return val; },
  PriceUSD: function (val) { return parseFloat(val, 10); },
  InStock: function (val) { return parseInt(val, 10); },
}

var myViewModel = {

  sortField: "",
  sortAsc: false,
  sort: function (field) {

    if (myViewModel.sortField === field) myViewModel.sortAsc = !myViewModel.sortAsc
    else myViewModel.sortAsc = true;

    myViewModel.sortField = field;

    myViewModel.games.sort(function (a, b) {

      return convertFuncs[field](a[field]) < convertFuncs[field](b[field]) ? (myViewModel.sortAsc ? -1 : 1) : (myViewModel.sortAsc ? 1 : -1);

    });

  }
};

(function () {

  $.ajax({
    url: "/api/Trip"
  }).done(function (data) {

    myViewModel.games = ko.observableArray(data);
    ko.applyBindings(myViewModel, document.getElementById("grid"));

  });

})();
