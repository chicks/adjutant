Adjutant.Views.IdentityMap = Backbone.View.extend({
  initialize: function() {
    this.identities = this.options.collection;
    this.render();
  },
  
  render: function() {
    $('#identities_contents').html(JST['identities/show']())
  }
});