Adjutant.Views.IdentityMap = Backbone.View.extend({
  initialize: function() {
    this.identities = this.options.collection;
    this.render();
  },
  
  render: function() {
    if(this.identities.length > 0) {
      var out = "<h3><a href='#new'>Create New</a></h3><ul>";
      this.identities.each(function(item) {
        out += "<li><a href='/identities/" + item.escape('_id') + "'>" + item.escape('user_name') + "</a></li>";
      });
      out += "</ul>";
    } else {
      out = "<h3>No identities! <a href='#new'>Create one</a></h3>";
    }
    $(this.el).html(out);
    $('#imjs').html(this.el);
  }
});