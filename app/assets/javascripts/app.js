$(function(){

  $('#loginlink').click( slidedown_login_form );
  $('#cancel_login_form').click( cancel_login_form );
});

function slidedown_login_form()
{
  $('#loginform').slideToggle( 300, get_login_form )
  $('#loginform').show();
}

function cancel_login_form()
{
  $('#cancel_login_form').parent().parent();
}