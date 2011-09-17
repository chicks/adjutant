Adjutant.Router = Backbone.Router.extend({
  routes: {
    "": "index",
  },
  
  initialize: function() {
    _.bindAll(this);
    
    Backbone.history.start({pushState: true, root: "/dashboard"});
  },

  index: function() {
  	var contexts = new Adjutant.Collections.Contexts();
    
    contexts.fetch({
      success: _.bind(function(collection) {
          this.contextViews = new Adjutant.Views.ContextMap({ el: $("#contexts"), collection: collection});
      }, this),
      error: function() { new Error({ message: "Error loading identities." }); }
    });
  }
});