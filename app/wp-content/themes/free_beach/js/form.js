$('#form').on('submit', function (e) {
    e.preventDefault();
    $.ajax({
        url: './wp-content/themes/free_beach/send.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {
            $('.alert-modal').fadeIn('slow').css('display', 'flex');
            $('input[type="text"], textarea').val('');
            $('.input-wrapper--input').removeClass('input-wrapper--input');
            setTimeout(function () {
                $('.alert-modal').fadeOut('slow');
            }, 2000)
        }
    });
});

$('.subs-form').on( "keypress", function (e) {
    e.preventDefault();
    $.ajax({
        url: '/wp-content/themes/free_beach/send.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {
            $('input[type="text"], textarea').val('');
            $('.input-wrapper--input').removeClass('input-wrapper--input');
        }
    });
});