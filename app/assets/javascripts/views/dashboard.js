AA.namespace("views");
_.extend(AA.views, {
    Dashboard: Backbone.View.extend({
        events: {
            "click #add_identity_button": "toggle_new_identity_form"
        },
        subViews: {},
        publish: [],
        subscribe: {},
        
        initialize: function() {
            
            this.loadSubViews();
            // this.pubsub();
            this.subViews.identityForm.bind("hello", function() {console.log("hello");} );
        },
        
        loadSubViews: function() {
            // Create new identity view
            this.subViews["identityForm"] = new AA.views.IdentityForm({ el: $("#new_identity_form")});
        },
        
        pubsub: function() {
            console.log("Publishing Subscribing");
            var self = this;
            this.sub(this.subscribe);
            
            _.each(this.subViews, function(view) {
                console.log("Loopn");
                console.log(view);
                console.log(this);
                if (view.publish) {
                    _.each(view.publish, function(event) {
                        self.pub(event);
                    }, view);                    
                }
                
                if (view.subscribe) {
                    console.log(view.subscribe);
                    _.each(view.subscribe, function(event) {
                        console.log("Subscribing to:");
                        console.log(event);
                        self.sub(event);
                    });
                }
            });
        },
        
        pub: function(events, context) {
            context = context || this;
            
            context.bind(event, function() {
                console.log("Triggering" + event);
                this.trigger(event);
            }); 
        },
        
        sub: function(events, context) {
            var self = this;
            console.log("sub():");
            console.log(events);
            console.log(this);
            _.each(events, function(callback, event) {
                console.log("callback:");
                console.log(callback);
                console.log(this);
                self.bind(event, callback, context);
            }, context);
        },
        
        toggle_new_identity_form: function() {
            console.log("Triggering");
            this.trigger("IdentityForm:toggleForm");
            console.log("done");
        }
    })
})