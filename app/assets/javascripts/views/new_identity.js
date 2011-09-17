Adjutant.Views.NewID = Backbone.View.extend({
  events: {
    
  },
  
  initialize: function() {
    _.bindAll(this);
    
    // Since our identity create button is outside of the scope of the widget we
    // will need to use jQuery to manually bind it.
    $("#add_identity_button").click(this.showForm);
  },
  
  showForm: function(e) {
    this.el.slideToggle('fast');
    console.log("show the new form");
  },
});