AA.namespace("models");
_.extend(AA.models, {
    Identity: Backbone.Model.extend({
        urlRoot: 'identities',
	    url : function() {
            return this.isNew() ? this.urlRoot : this.urlRoot + '/' + this.id;
        }
    })
});