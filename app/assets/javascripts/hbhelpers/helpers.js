Handlebars.registerHelper("eachModel", function(context, block) {
  var ret = "";

  for(var i=0, j=context.length; i<j; i++) {
    ret = ret + block(context[i].attributes);
  }

  return ret;
});

Handlebars.registerHelper("ajaxlink", function(text, action) {
  var ret;
  
  ret = "<a class='sync_link " + action + "'>" + text + "</a>";
  return ret;
});