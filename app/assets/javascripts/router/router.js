Adjutant.Router = Backbone.Router.extend({
  routes: {
    "": "index",
  },
  
  contextViews: {},
  
  initialize: function() {
    _.bindAll(this);
    
    Backbone.history.start({pushState: true, root: "/dashboard"});
  },

  index: function() {
  	var contexts = new Adjutant.Collections.Contexts();
    var self = this;
    
    contexts.fetch({
      success: function(collection) {
        console.log(collection);
        _.each(collection.models, function(context) {
          console.log(context);
          this.contextViews[context.id] = new Adjutant.Views.ContextMap({ el: $("#contexts"), context: context});
        }, self);
      },
      error: function() { new Error({ message: "Error loading identities." }); }
    });
  }
});