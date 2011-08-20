toggle_new_identity_form = function() {
  button = '#add_identity_button';
  form   = '#new_identity_form';
  if ( $(button).text() == "New Identity" ) {
	$(form).slideDown();
	$(button).text("Cancel");
  } else {
	$(form).slideUp();
	$(button).text("New Identity");
  }
}
