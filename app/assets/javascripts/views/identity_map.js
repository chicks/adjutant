Adjutant.Views.IdentityMap = Backbone.View.extend({
  initialize: function() {
    this.collection.bind("change", this.render);
    this.render();
  },
  
  render: function() {
    this.el.html(JST['identities/show']({identities: this.collection.models}));
  }
});