var Identity = Backbone.Model.extend({
  idAttribute: "_id",
  
  url : function() {
    var base = 'identities';
    if (this.isNew()) return base;
    return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this._id;
  }
});