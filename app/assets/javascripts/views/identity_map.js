AA.namespace("views");
_.extend(AA.views, {
    IdentityForm: Backbone.View.extend({
        events: {},
        subscribe: {
            "IdentityForm:toggleForm": _.bind(this.toggle_new_identity_form, this)
        },
        publish: [],
        
        initialize: function() {
            _.bindAll(this);
            console.log("Creating identity form");
            
        },
        
        toggle_new_identity_form: function() {
            console.log("Handling click");
            button = $('#add_identity_button');
            if ($(button).text() == "New Identity") {
                this.el.slideDown();
                button.text("Cancel");
            } else {
                this.el.slideUp();
                button.text("New Identity");
            }
        }
    })
});