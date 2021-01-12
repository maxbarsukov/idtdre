$(function(){
    $(".vote").on('click', ".upvote, .downvote", function(){
        const post_id = $(this).parent().data("id"),
            is_upvote = $(this).hasClass("upvote");

        $.ajax({
            url: "/post/vote",
            method: "POST",
            data: { post_id: post_id, upvote: is_upvote },
            success: function(){
                console.log("success...");
            }
        })
    });
});
