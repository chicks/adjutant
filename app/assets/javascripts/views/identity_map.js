Adjutant.Views.IdentityMap = Backbone.View.extend({
  initialize: function() {
    this.identities = this.options.collection;
    this.render();
  },
  
  render: function() {
    $(this.el).html(JST['identities/show']());
    $('#imjs').html(this.el);
  }
});