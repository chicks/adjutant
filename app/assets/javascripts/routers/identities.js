// Basic identity route
Adjutant.Routers.Identities = Backbone.Router.extend({
  routes: {
    "": "index",
  },
  index: function() {
    var identities = new Adjutant.Collections.Identities();
    identities.fetch({
      success: function() { new Adjutant.Views.IdentityMap({ collection: identities }); },
        error: function() { new Error({ message: "Error loading identities." }); }
    })
  }
})