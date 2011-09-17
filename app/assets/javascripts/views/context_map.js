Adjutant.Views.ContextMap = Backbone.View.extend({
  identityViews: {},
  
  initialize: function() {
    this.collection.bind("change", this.render);
    
    this.render();
    
    _.each(this.collection.models, function(identity) {
      this.identityViews[identity.id] = new Adjutant.Views.IdentityMap({el: $("#" + identity.id), collection: identity.get("identities")});
    }, this);
  },
    
  render: function() {
    // Pass in the identities
    this.el.html(JST['contexts/show']({contexts: this.collection.models}))
    
    // 
  }
});