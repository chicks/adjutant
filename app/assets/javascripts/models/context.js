var Context = Backbone.Model.extend({
  idAttribute: "_id",
  
  url : function() {
    var base = 'contexts';
    if (this.isNew()) return base;
    return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this._id;
  },
  
  initialize: function() {
    var identities = this.get("identities");
    
    // Convert identities array to a collection
    // TODO: Possibly a more elegant way to do this?
    if (identities) {
      this.set({identities: new Adjutant.Collections.Identities(identities)});
    }
  }
});