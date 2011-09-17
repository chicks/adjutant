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
    
    // Create a Backbone View to handle new identity creation
    this.newIDView = new Adjutant.Views.NewID({el: $("#add_identity_button")});
    
    // Load the context data
    contexts.fetch({
      success: _.bind(function(collection) { // Create a contextMap Backbone View
          this.contextViews = new Adjutant.Views.ContextMap({el: $("#contexts"), collection: collection});
      }, this),
      error: function() { new Error({ message: "Error loading identities." }); }
    });
  }
});