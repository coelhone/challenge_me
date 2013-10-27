(function($){
    $(document).on('click', '#add_solution', function(){
        console.log($(this).data('url'));
        $.get($(this).data('url'), { challenge_id: $(this).data('challenge-id') });
    });
})(jQuery);