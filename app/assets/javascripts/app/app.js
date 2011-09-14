var Adjutant = {
  Views: {},
  Routers: {},
  Collections: {},
  init: function() {
    new Adjutant.Routers.Identities();
    Backbone.history.start({pushState: true, root: "/dashboard"});
  }
};