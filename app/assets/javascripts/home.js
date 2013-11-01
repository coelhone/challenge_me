(function($){
    $(document).on('click', '#add_solution', function(){
        $.get($(this).data('url'), { challenge_id: $(this).data('challenge-id') });
    });
})(jQuery);