Adjutant.Views.ContextMap = Backbone.View.extend({
  initialize: function() {
    this.context = this.options.context;
    this.context.bind("change", this.render);
    this.render();
  },
    
  render: function() {
    this.el.html(JST['contexts/show']({context: this.context.models}))
  }
});