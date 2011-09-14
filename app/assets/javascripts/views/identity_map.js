Adjutant.Views.IdentityMap = Backbone.View.extend({
  initialize: function() {
    this.identities = this.options.collection;
    this.identities.bind("change", this.render);
    this.render();
  },
  
  render: function() {
    $('#identities_contents').html(JST['identities/show']({identities: this.identities.models}));
  }
});