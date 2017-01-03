$(document).on('ready', function() {
  $('#preview').on('click', function() {
    event.preventDefault();
    text_area = $('#newsletter_body');
    text_area = $('#newsletter_body');
    iframe = $('#email_preview');
    if (iframe.is(":visible")) {
      iframe.hide();
      text_area.show();
    } else {
      text_area.hide();
      src =  "/newsletters/preview?body=" + text_area.val() + "&header=" + $('#newsletter_header').val() + "&footer=" + $('#newsletter_footer').val();
      $('#email_preview_iframe').attr('src', src);
      iframe.show();
    }
  });
});
