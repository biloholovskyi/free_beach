$('#form').on('submit', function (e) {
    e.preventDefault();
    $.ajax({
        url: '/wp-content/themes/free_beach/send.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {
            $('.modal-alert').fadeIn('slow').css('display', 'flex');
            $('input[type="text"], textarea').val('');
            $('.input-wrapper--input').removeClass('input-wrapper--input');
            setTimeout(function () {
                $('.modal-alert').fadeOut('slow');
            }, 2000)
        }
    });
});