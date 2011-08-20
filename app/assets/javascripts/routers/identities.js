var Identities = Backbone.Router.extend({

  routes: {
    "": "index",
  },

  index: function() {
    $.getJSON('/identities', function(data) {
      if(data) {
        var identities = _(data).map(function(i) { return new Identity(i); });
        new App.Views.Index({ documents: documents });
      } else {
        new Error({ message: "Error loading documents." });
      }
    });
  },
  
});